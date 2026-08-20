# Mission 04 — Shared Storage Under Siege

## Briefing
One client performs well. Several clients hitting the same shared path do not.

## Objective
Model client/server storage, network dependency, concurrency, and bottleneck location.

## Build
Create a laptop-scale NFS or comparable shared-storage lab using VMs/namespaces/containers where practical. Establish one-client baseline, then generate concurrent reads/writes from multiple clients.

## Investigation
Measure both storage and network behavior. Determine whether the first bottleneck is client, network, server CPU, server disk, or another shared resource.

## Evidence
- shared-storage path diagram
- 1-client vs multi-client results
- server/client/network metrics
- bottleneck argument

## Victory condition
You can prove where contention occurs rather than simply blaming “NFS” or “the network.”
