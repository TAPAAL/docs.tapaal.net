---
title: Engine selection
weight: 40
lastmod: 2026-08-29
description: Configure the verifier executables used by TAPAAL and check their detected versions.
---

Open **Tools > Engine selection** to configure the executables used for verification. The dialog lets you choose paths for `verifytapn`, `verifydtapn`, `verifypn`, and the optional UPPAAL `verifyta` executable.

Use the file picker to select an executable, then confirm that the configured path exists and that TAPAAL can read the engine version. For UPPAAL, select `verifyta`, not the UPPAAL GUI application.

Engine selection only configures locations. Read [Engines and options](/verification/engines/) to choose a backend and understand support, bounds, reductions, and traces.
