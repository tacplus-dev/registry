# History: registry

Append-only: add entries at the end, never edit or remove one (CI enforces it). One line each:
`- <YYYY-MM-DD> <who: looper|agent|jody> <kind: issue|decision|release|deploy> <one line> (<links>)`

- 2026-10-29 looper issue tacplus floor pinned to the 2.4 line; 2.5 is the latest released line (#5, 96cdf23)
- 2026-11-08 looper issue tacplus floor pinned to the 2.5 line; 2.6 is the latest released line (#7)
- 2026-11-08 looper issue Pin the build: floor 2.6 and a committed tacplus.lock, so the build pipeline and its security checks run on this repository (#8)
- 2026-11-11 looper issue Pinned build image build:2.6.1 ships gh with golang.org/x/net v0.60.0 (CVE-2026-78661): re-pin to the fixed 2.6 release (#10)
- 2026-11-12 looper issue Pinned build image build:2.6.5 ships fixed CRITICAL OpenEXR CVE-2026-42216/-42217 and HIGH .NET CVEs: re-pin to tacplus 2.6.10 (trivy, tacplus.lock build_image) (#11, 1c50251)
- 2026-11-15 looper issue Pinned build image build:2.6.10 ships linux-libc-dev 6.12.116-1 with six fixed HIGH kernel CVEs (DSA-6628-1, tacplus#711): re-pin to tacplus 2.6.12 (#12, e95a438)
- 2026-11-20 looper issue Register admiral (tacplus-dev/admiral), a /system service: tacplus-dev/admiral#1 cannot land until it is (#13)
- 2026-11-20 looper issue Register skipper (tacplus-dev/skipper), a tenant-scope service: tacplus-dev/skipper#1 cannot land until it is (#15)
- 2026-11-20 looper issue Pinned build image build:2.6.12 ships docker-buildx 0.38.1 with containerd v2.4.1 (CVE-2026-95839, HIGH): no tacplus release fixes it yet (#16)
- 2026-11-22 looper issue Pinned images behind their lines: relock (tacplus.lock: tacplus 2.6.12 → 2.6.13, and 1 more) (#17)
- 2026-11-23 looper issue Pinned images behind their lines: relock (tacplus.lock: tacplus 2.6.13 → 2.6.14, and 1 more) (#18)
- 2026-11-28 looper issue Register stratum's TenantConfig slice field (4): a build no longer assigns it (tacplus#352) (#9)
