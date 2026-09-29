# HolyFetch

A lightweight TempleOS system information tool written entirely in HolyC. Inspired by Neofetch.

## Features

- TempleOS-native HolyC implementation
- Displays OS and x86-64 architecture
- Displays CPU brand using TempleOS CPUID support
- Displays detected logical CPU count
- Displays physical memory size using TempleOS BIOS memory reporting
- Displays uptime
- Displays the native TempleOS graphics resolution
- Compact DolDoc color formatting
- No external dependencies

## Usage

Copy `HolyFetch.HC` into TempleOS and run:

```c
#include "HolyFetch.HC"
```

The script runs automatically after loading.

## Requirements

HolyFetch targets the final TempleOS environment and uses TempleOS kernel globals and HolyC directly. HolyC is compiled inside TempleOS rather than with a conventional host C compiler.

## Version

Current development version: **v0.1.0**

## Status

HolyFetch has now been compiled and executed successfully inside TempleOS running under QEMU. The first runtime test exposed an incorrect physical-memory calculation; the implementation now uses TempleOS `MemBIOSTotal()` for memory reporting and is awaiting one verification run before the v0.1.0 release is finalized.

## Roadmap

- Verify the corrected memory value in TempleOS/QEMU
- Refine the TempleOS-style logo and layout
- Finalize the v0.1.0 release

## License

MIT
