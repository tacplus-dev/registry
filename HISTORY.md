# History: registry

Append-only: add entries at the end, never edit or remove one (CI enforces it). One line each:
`- <YYYY-MM-DD> <who: looper|agent|jody> <kind: issue|decision|release|deploy> <one line> (<links>)`

- 2026-10-29 looper issue tacplus floor pinned to the 2.4 line; 2.5 is the latest released line (#5, 96cdf23)
- 2026-11-08 looper issue tacplus floor pinned to the 2.5 line; 2.6 is the latest released line (#7)
- 2026-11-08 looper issue Pin the build: floor 2.6 and a committed tacplus.lock, so the build pipeline and its security checks run on this repository (#8)
- 2026-11-11 looper issue Pinned build image build:2.6.1 ships gh with golang.org/x/net v0.60.0 (CVE-2026-78661): re-pin to the fixed 2.6 release (#10)
