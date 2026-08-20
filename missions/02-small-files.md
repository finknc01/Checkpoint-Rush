# Mission 02 — The Small-File Swarm

## Briefing
A dataset is only a few gigabytes, yet startup takes much longer than reading one file of the same size.

## Objective
Explore metadata and many-small-file overhead compared with large sequential files.

## Build
Create a disposable dataset containing many small files and another containing a few larger files with similar total size. Time directory traversal, open/read operations, archive/unarchive, and simple processing.

## Twist
Increase file count without increasing total bytes and observe what changes.

## Evidence
- dataset shape
- timing table
- CPU/storage observations
- explanation of metadata/open-call overhead

## Victory condition
You can explain why dataset layout can matter even when storage capacity and total bytes are unchanged.
