# `just gates`: the checks every change to main passes, in the build image
# tacplus.lock pins (the build pipeline, tacplus-dev/build) or locally.

# `tacplus` runs the release tacplus.lock pins (the build image's launcher, or
# the looper's); TACPLUS_BIN overrides it with a tacplus of your own.
TACPLUS := env_var_or_default("TACPLUS_BIN", "tacplus")

default: gates

# The pin: an exact release and the build image by digest (`tacplus pin` writes it).
check-pin:
  #!/usr/bin/env bash
  set -euo pipefail
  grep -Eq '^tacplus: [0-9]+\.[0-9]+\.[0-9]+$' tacplus.lock || { echo "check-pin: tacplus.lock names no exact tacplus release" >&2; exit 1; }
  grep -Eq '^build_image: [^[:space:]]+@sha256:[0-9a-f]{64}$' tacplus.lock || { echo "check-pin: tacplus.lock names no build image by digest" >&2; exit 1; }

# registry.yaml loads as an authority: tacplus syncs a consumer's lock from it
# and refuses a name or id that appears twice. The consumer lives under target/
# (not committed) so the containerised tacplus sees it.
check-registry:
  #!/usr/bin/env bash
  set -euo pipefail
  dir="{{justfile_directory()}}/target/registry-check"
  rm -rf "$dir" && mkdir -p "$dir"
  printf 'registries:\n  - %s\n' "{{justfile_directory()}}" > "$dir/registry.yaml"
  cd "$dir" && {{TACPLUS}} registry --proto-dir .

gates: check-pin check-registry

clean:
  rm -rf target
