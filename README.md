# tacplus registry

The one place ids that must be globally unique come from: tacplus service ids and
vservice field ids. They are field numbers in the generated `TokenEntitlements`
message and values of the `ServiceName` enum, so two services anywhere in the
ecosystem may never share one.

`registry.yaml` is the whole registry (`scope: global`). Each entry names the
service, its id, and its **contract**: the repo that holds its proto. That repo
may be public, shared with one partner, or private. The registry decides ids, not
who may read what, and never which implementation a fleet runs: that is the fleet
manifest's choice, so a fleet may run its own kernel under the same name and id.

## Rules

- **Append-only.** Ids are never reused and never renumbered. A retired service
  keeps its id forever.
- **Ids come from tacplus, never by hand.** From a checkout of this repo:

  ```bash
  tacplus registry register NAME --kind service|vservice --contract <proto repo URL> --visibility public|private --proto-dir .
  ```

  Commit the result and open a pull request. Merge is the act of registration.
- **Ranges.** 1-99 is the legacy range, allocated per repo before this registry
  existed and frozen as-is, in whichever registry the service sits. 100 is
  reserved (`azp`). This registry allocates 101-1023. A **private registry**
  (`scope: private`, kept by a fleet owner for services that never need a global
  id) allocates 1024-2047. 2047 is the ceiling: protobuf encodes field numbers up
  to 2047 in two bytes, so tokens stay small.
- **Consumers lock, they do not copy.** A proto repo's own `registry.yaml` names
  its authorities under `registries:` (this one, and a private one if any) and is
  synced by `tacplus registry`, which unions them and refuses a name or id that
  appears in two. Builds read only the lock, so generation never depends on this
  repo being reachable.

## Seed

Seeded 2026-10-23 from the per-repo registries that existed before it: schematic
`platform/proto` (ids 5-58, vservices 42/45/52) and the `query` vservice (71).
Nothing was renumbered.

## What is not here

Services that belong to one product and no fleet but its owner's are registered in
that owner's own registry, not this one. Their ids are still frozen here: this
registry allocates 101-1023 and never hands out a 1-99 id, so an id recorded
elsewhere in the legacy range can never collide with one allocated here. Legacy ids
54 and 70-81 are taken this way (removed 2026-10-25).
