# State: registry

Overwritten to stay current (loopers and agents). Last updated: 2026-11-20 by looper (#16).

- **Version / line:** unreleased (no tags); tacplus floor 2.6, pinned to 2.6.13 and its build image by digest (tacplus.lock, #17; 2.6.10's shipped linux-libc-dev 6.12.116-1 with six fixed HIGH kernel CVEs, #12; 2.6.5's image shipped OpenEXR 3.1.13 and ASP.NET Core 10.0.14 with fixed HIGH/CRITICAL CVEs, #11; 2.6.1's gh with golang.org/x/net v0.60.0, #10)
- **Works:** `registry.yaml` (`scope: global`); ids allocated with `tacplus registry register` (2.4 is the first line with it; the floor follows the latest released line); `just gates` checks the pin and that registry.yaml loads as an authority (no name or id twice)
- **Released / deployed:** nothing released; consumers lock this registry through `tacplus registry`
- **Known gaps:** ROADMAP.md's "Now" line still names floor 2.4 and no pin (changed only by an agent at Jody's request; #5, #7, #8; PROPOSALS.md)
- **Known exceptions:** CVE-2026-95839 (containerd v2.4.1 in the pinned build image's docker-buildx: build:2.6.12's, and build:2.6.13 ships no fix either), accepted until 2026-12-04 (security-exceptions.yaml; Jody, #16): re-pin and drop it once tacplus ships a fixed buildx (tacplus-dev/tacplus#901)
- **Blocked on:** none
