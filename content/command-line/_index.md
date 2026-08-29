---
title: Command Line
weight: 70
pre: "<b>7. </b>"
lastmod: 2026-08-29
disableToc: true
---

This page is a draft reference for running TAPAAL-related tools outside the GUI. The GUI can export models and queries for batch verification, while the individual verification engines accept their own command-line options.

{{% notice note %}}
The command-line flags are engine-specific and can change with a release. Use the `--help` output shipped with the exact engine version you are running. This page documents the stable workflow and source-build commands first.
{{% /notice %}}

## Build the GUI from source

The current [TAPAAL GUI source repository](https://github.com/tapaal/tapaal-gui) targets Java 17. From the repository root:

```text
./gradlew run       # Linux and macOS
gradlew.bat run     # Windows
```

Other useful Gradle tasks include:

```text
./gradlew test
./gradlew build
./gradlew jar
./gradlew distZip
```

Set `JAVA_HOME` to a JDK installation if the wrapper cannot find Java. Gradle downloads the project's dependencies during the build.

## Export a batch job from the GUI

When you need to verify several models or queries, use **File > Export > Batch Export of model and queries**. TAPAAL writes the model and query files needed for command-line use with the verification engines. Keep the exported model, query, and engine version together so that results can be reproduced.

The GUI also provides **Tools > Batch processing** for running batch verification directly. Use this when you want TAPAAL to process multiple net/query combinations without manually invoking each engine.

## Engine command lines

TAPAAL's verification backends are distributed and maintained separately. The official [download page](https://www.tapaal.net/download/) links to the source for the continuous-time, discrete-time, and untimed engines. After obtaining an engine, run its help command before constructing a script:

```text
verifytapn --help
verifydtapn --help
verifypn --help
verifyta --help
```

The executable names above are illustrative; package names and available flags may differ by platform. In the GUI, configure executable paths under **Tools > Engine selection**.

## Reproducible command-line runs

For a repeatable run, record:

- the model and query file names;
- the engine executable and version;
- the Java/runtime environment when the GUI is involved;
- the engine options, extra-token bound, reduction settings, and trace setting;
- the exit status and output log.

If a command-line result disagrees with the GUI, first compare the exported files and all of these settings. A different engine or reduction option can legitimately produce a different trace or performance profile.

