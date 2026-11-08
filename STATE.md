# State: registry

Overwritten to stay current (loopers and agents). Last updated: 2026-11-08 by looper (#8).

- **Version / line:** unreleased (no tags); tacplus floor 2.6, pinned to 2.6.1 and its build image by digest (tacplus.lock)
- **Works:** `registry.yaml` (`scope: global`); ids allocated with `tacplus registry register` (2.4 is the first line with it; the floor follows the latest released line); `just gates` checks the pin and that registry.yaml loads as an authority (no name or id twice)
- **Released / deployed:** nothing released; consumers lock this registry through `tacplus registry`
- **Known gaps:** ROADMAP.md's "Now" line still names floor 2.4 and no pin (changed only by an agent at Jody's request; #5, #7, #8; PROPOSALS.md)
- **Blocked on:** none
