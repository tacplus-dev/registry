# Roadmap: registry

Owned by Jody; changed only by an agent at Jody's request. Loopers propose in PROPOSALS.md.

## Now
The global registry of tacplus service and vservice ids (`registry.yaml`, `scope: global`, ids 101-1023); merge is the act of registration.
Unreleased (no tags); tacplus floor 2.4 (the first line with `tacplus registry register`).

## Next
- Nothing approved yet.

## Later
- Nothing recorded yet.

## Not doing
- Reusing or renumbering ids: the registry is append-only; retired and dead services keep their ids forever (README)
- Versions in the registry: the fleet manifest pins what a fleet runs (tacplus-dev/roadmap:items/tacplus-registry-and-floor.md, 2026-10-23)
- Services that belong to one product: they go in their owner's private registry, not here (README)
