# Mission 00 — Baseline the Storage Path

## Briefing
The storage dashboard says “healthy.” That does not tell you what the workload experiences.

## Objective
Map application I/O to filesystem, cache, block device, and underlying storage.

## Tasks
Use `lsblk`, `findmnt`, filesystem information, `df`, `iostat`, and a size-limited `fio` test in a disposable directory. Establish baseline throughput, IOPS, latency, utilization, and queue behavior for a few simple patterns.

## Evidence
- storage-path diagram
- device/filesystem inventory
- test parameters
- baseline table

## Victory condition
You know exactly what layer and device your benchmark touched and can reproduce the test without risking the rest of the disk.
