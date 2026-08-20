# Checkpoint-Rush — Mercury Storage Incident Campaign

Mercury’s GPUs go idle whenever several training jobs hit storage at once. Each mission isolates one storage behavior until you can prove where the time disappears.

## Missions
- [00 — Baseline the Storage Path](00-baseline.md)
- [01 — Sequential vs Random](01-access-patterns.md)
- [02 — The Small-File Swarm](02-small-files.md)
- [03 — The Cache Illusion](03-cache.md)
- [04 — Shared Storage Under Siege](04-shared-storage.md)
- [05 — The Checkpoint Stampede](05-stampede.md)
- [06 — Why Is the GPU Waiting?](06-gpu-idle.md)
- [07 — Mitigation Tournament](07-mitigations.md)
- [Final — Mercury Incident Report](final-mercury.md)

Keep tests inside disposable files/directories. Never benchmark by filling or stressing a drive that contains irreplaceable data without strict size limits.
