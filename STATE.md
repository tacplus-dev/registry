# State: registry

Overwritten to stay current (loopers and agents). Last updated: 2026-11-28 by looper (#19).

- **Version / line:** unreleased (no tags); tacplus floor 2.6, pinned to 2.6.16 and its build image by digest (tacplus.lock, #19: the 2.6 line's newest patch; 2.6.15, #9, the first 2.6 release carrying tacplus#352's fix, a declared config slice needs a registered field; 2.6.13's shipped containerd v2.4.1 in docker-buildx (CVE-2026-95839), krb5 and linux-libc-dev with fixed HIGH CVEs, #18; 2.6.10's shipped linux-libc-dev 6.12.116-1 with six fixed HIGH kernel CVEs, #12; 2.6.5's image shipped OpenEXR 3.1.13 and ASP.NET Core 10.0.14 with fixed HIGH/CRITICAL CVEs, #11; 2.6.1's gh with golang.org/x/net v0.60.0, #10)
- **Works:** `registry.yaml` (`scope: global`); ids allocated with `tacplus registry register` (2.4 is the first line with it; the floor follows the latest released line); config slice fields registered (`tenant_slice_field`: kernel 1, opa 2, oauth 3, stratum 4, #9); `just gates` checks the pin and that registry.yaml loads as an authority (no name or id twice)
- **Released / deployed:** nothing released; consumers lock this registry through `tacplus registry`
- **Known gaps:** ROADMAP.md's "Now" line still names floor 2.4 and no pin (changed only by an agent at Jody's request; #5, #7, #8; PROPOSALS.md)
- **Known exceptions:** none (security-exceptions.yaml is empty: CVE-2026-95839 went with the build:2.6.14 pin, #18)
- **Blocked on:** none
