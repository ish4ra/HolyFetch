# HolyFetch

<p align="center">
  <strong>A tiny TempleOS system-information fetch tool written entirely in HolyC.</strong>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/TempleOS-HolyC-blue" alt="TempleOS / HolyC">
  <img src="https://img.shields.io/badge/version-0.1.0-yellow" alt="Version 0.1.0">
  <img src="https://img.shields.io/badge/runtime-tested-success" alt="Runtime tested">
  <img src="https://img.shields.io/badge/license-MIT-green" alt="MIT License">
</p>

HolyFetch is a lightweight TempleOS-native system information utility inspired by Neofetch. It uses TempleOS kernel interfaces directly and has no external runtime dependencies.

## Preview

```text
      _____
     /     \
    /  /\  \
   /  /  \  \
  /__/    \__\

HolyFetch v0.1.0
----------------
OS            TempleOS
Architecture  x86-64
CPU           QEMU Virtual CPU version 2.5+
CPU cores     1 logical
Memory        512 MiB physical
Uptime        0d 0h 5m
Resolution    640x480
```

> The preview above illustrates the intended output format. The corrected memory value is still awaiting one final runtime verification.

## Features

- Native HolyC implementation for TempleOS
- TempleOS and x86-64 system identification
- CPU brand detection through CPUID
- Logical CPU count
- Physical memory reporting through TempleOS BIOS memory information
- System uptime
- Native TempleOS graphics resolution
- DolDoc color formatting
- Compact TempleOS-style ASCII logo
- No external dependencies

## Installation

Download or copy `HolyFetch.HC` into your TempleOS filesystem.

For VM-based development, a FAT32 transfer disk can be used to move the source file from the host system into TempleOS.

## Usage

Load the source file from the TempleOS command line:

```c
#include "HolyFetch.HC"
```

HolyFetch runs automatically when the file is loaded.

After it has been loaded, it can also be run again with:

```c
HolyFetch;
```

## Runtime testing

HolyFetch has been compiled and executed successfully on TempleOS running under QEMU.

The first real runtime test verified:

- HolyC compilation and execution
- CPU brand detection
- Logical CPU count
- Uptime reporting
- 640x480 TempleOS resolution detection
- DolDoc color output
- General output layout

The test also exposed an incorrect physical-memory calculation in the initial implementation. The current source now uses TempleOS `MemBIOSTotal()` instead of deriving RAM size from `mem_physical_space`.

### Test environment

| Component | Value |
| --- | --- |
| Guest OS | TempleOS 5.03 |
| Hypervisor | QEMU |
| Architecture | x86-64 |
| VM memory | 512 MiB |
| Display | 640x480 |
| HolyFetch | v0.1.0 development |

## Screenshots

Runtime screenshots from the TempleOS/QEMU test session are available and will be added here with the final v0.1.0 verification pass.

## Requirements

- TempleOS
- x86-64 environment supported by TempleOS
- HolyC compiler included with TempleOS

HolyFetch is intended to be compiled inside TempleOS rather than with a conventional host C compiler.

## Project status

**v0.1.0 is release-candidate quality, with one final verification remaining.**

The current implementation has already completed a real TempleOS runtime test. The remaining check is to confirm that the corrected `MemBIOSTotal()` memory value reports the expected VM RAM size.

## Roadmap

- [x] Initial HolyC implementation
- [x] Real TempleOS/QEMU runtime test
- [x] Fix physical-memory calculation
- [x] Polish output alignment
- [x] Add project changelog
- [ ] Verify corrected memory value in TempleOS/QEMU
- [ ] Add runtime screenshots
- [ ] Finalize the v0.1.0 release

## Changelog

See [CHANGELOG.md](CHANGELOG.md) for development history.

## License

HolyFetch is released under the [MIT License](LICENSE).
