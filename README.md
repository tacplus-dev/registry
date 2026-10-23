# tacplus registry

The one authority for ids that must be unique across a composed kernel: tacplus
service ids and vservice field ids. They are field numbers in the generated
`TokenEntitlements` message and values of the `ServiceName` enum, so two services
anywhere in the ecosystem may never share one.

`registry.yaml` is the whole registry. Each entry names the service, its id, the
proto repo that declares it, and whether that repo is public. Private repos are
listed too: the id space is one space, and a name leaks nothing.

## Rules

- **Append-only.** Ids are never reused and never renumbered. A retired service
  keeps its id forever.
- **Ids come from tacplus, never by hand.** From a checkout of this repo:

  ```bash
  tacplus registry register NAME --kind service|vservice --repo <proto repo URL> --visibility public|private --proto-dir .
  ```

  Commit the result and open a pull request. Merge is the act of registration.
- **Ranges.** 1-99 is the legacy range, allocated per repo before this registry
  existed and frozen as-is. 100 is reserved (`azp`). New registrations are
  allocated upward from 101. 2047 is the ceiling: protobuf encodes field numbers
  up to 2047 in two bytes, so tokens stay small.
- **Consumers lock, they do not copy.** A proto repo's own `registry.yaml` names
  this repo with `global:` and is synced by `tacplus registry`. Builds read only
  the lock, so generation never depends on this repo being reachable.

## Seed

Seeded 2026-10-23 from the three per-repo registries that existed before it:
schematic `platform/proto` (ids 5-58, vservices 42/45/52), sonar `backend`
(id_min 70: ids 70-79, vservice 71, and scottyagent which kept 54 when it moved),
and sonar `docmanager` (id_min 80: 80-81). Nothing was renumbered.
