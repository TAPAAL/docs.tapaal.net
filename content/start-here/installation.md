---
title: Installation
weight: 10
lastmod: 2026-08-29
---

# Installation

## Released application

Download the package for your operating system from the [official TAPAAL download page](https://www.tapaal.net/download/). The page currently provides 64-bit packages for Windows, Linux, Intel macOS, and Apple-silicon (Arm) macOS.

Before launching a released binary, install Java 11 or newer. The official page recommends [Adoptium](https://adoptium.net/) as one source of Java distributions.

### Windows

1. Download the 64-bit Windows package.
2. Install or unpack it according to the included `README.txt`.
3. If you install Java with Adoptium on Windows, enable the **JavaSoft (Oracle) registry keys** option. Without those registry keys, TAPAAL may not find Java even when it is installed.
4. Start TAPAAL and open the introductory example from **File > Example nets > Timed-Arc Petri nets > intro-example**.

### Linux

1. Download the 64-bit Linux package.
2. Unpack it and follow the included `README.txt`.
3. Confirm that Java 11 or newer is available to the application.
4. Start TAPAAL and open the introductory example from **File > Example nets > Timed-Arc Petri nets > intro-example**.

If the application does not start, check the terminal output and confirm that the Java executable is on your `PATH`.

### macOS

1. Choose the package matching your Mac: Intel or Arm.
2. Unpack it and follow the included `README.txt`.
3. The first launch may be blocked by macOS. Use **System Settings > Privacy & Security** to allow the application, or Control-click it and choose **Open**.
4. Open the introductory example from **File > Example nets > Timed-Arc Petri nets > intro-example**.

## Optional UPPAAL integration

TAPAAL can use UPPAAL's `verifyta` executable as an alternative verification backend. Install UPPAAL separately from [uppaal.org](https://www.uppaal.org/), then select the `verifyta` executable in **Tools > Engine selection**. The [engine guide](/verification/engines/) explains when this is useful.

## Running the GUI from source

The current `tapaal-gui` build targets Java 17. Install a JDK 17 or newer, clone the [source repository](https://github.com/tapaal/tapaal-gui), and run the Gradle wrapper from the repository root:

```text
./gradlew run       # Linux and macOS
gradlew.bat run     # Windows
```

If Gradle cannot locate Java, set `JAVA_HOME` to the JDK installation. The wrapper downloads the project's build dependencies.
