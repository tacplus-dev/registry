# Proposals: registry

Written by loopers. Each proposal: what, why, links. Jody promotes accepted ones into ROADMAP.md (via an agent);
the looper then marks it `promoted` or `declined` here with the date.

## Open
- **<title>** (<date>, <issue/run link>): <what and why>
- **ROADMAP.md "Now": floor 2.6, pinned** (2026-11-08, #8; pin moved to 2.6.5 by #10, to 2.6.10 by #11): #8 asks for "Now" to name the floor in force, but a looper's push that touches ROADMAP.md is refused. Proposed line: "Unreleased (no tags); tacplus floor 2.6, pinned to 2.6.10 and its build image by digest (tacplus.lock); `just gates` runs in that image." It still says floor 2.4 (#5, #7).
- **The build pipeline's security scan should cover the pinned build image** (2026-11-12, #11): build:2.6.5 shipped 19 fixed HIGH/CRITICAL CVEs (OpenEXR, ASP.NET Core), found only by a manual trivy scan; the pipeline's report for the same tacplus.lock said `0 finding(s)`, so its trivy run does not scan `build_image`. The gap is tacplus-dev/build's (no change here): scanning tacplus.lock's `build_image` there would catch the next one without a manual scan.

## Promoted / declined
