# State: registry

Overwritten to stay current (loopers and agents). Last updated: 2026-11-11 by looper (#9).

- **Version / line:** unreleased (no tags); tacplus floor 2.6, pinned to 2.6.5 and its build image by digest (tacplus.lock; 2.6.1's image shipped gh with golang.org/x/net v0.60.0, CVE-2026-78661, #10)
- **Works:** `registry.yaml` (`scope: global`); ids allocated with `tacplus registry register` (2.4 is the first line with it; the floor follows the latest released line); config slice fields registered (`tenant_slice_field`: kernel 1, opa 2, oauth 3, stratum 4); `just gates` checks the pin and that registry.yaml loads as an authority (no name or id twice)
- **Released / deployed:** nothing released; consumers lock this registry through `tacplus registry`
- **Known gaps:** ROADMAP.md's "Now" line still names floor 2.4 and no pin (changed only by an agent at Jody's request; #5, #7, #8; PROPOSALS.md)
- **Blocked on:** the pin to a tacplus release carrying tacplus#352's fix (#9): v2.6.4 through v2.6.8 shipped without it; the release/2.6 backport tacplus-dev/tacplus#367 is open
