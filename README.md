# HolyFetch

A lightweight TempleOS system information tool written entirely in HolyC. Inspired by Neofetch.

## Features

- Native HolyC implementation for TempleOS
- TempleOS and x86-64 system identification
- CPU brand via CPUID
- Logical CPU count
- Physical memory via TempleOS BIOS memory reporting
- System uptime
- Native TempleOS graphics resolution
- Compact DolDoc color formatting
- No external dependencies

## Usage

Copy `HolyFetch.HC` into TempleOS and run:

```c
#include "HolyFetch.HC"
```

HolyFetch runs automatically after the file is loaded.

## Runtime testing

HolyFetch has been compiled and executed successfully inside TempleOS running under QEMU.

The first runtime test confirmed working CPU, core-count, uptime, resolution, color output, and general layout. It also exposed an incorrect memory calculation in the initial implementation. The current source uses TempleOS `MemBIOSTotal()` for physical memory reporting.

The memory fix is source-verified and is pending one final in-TempleOS verification run before v0.1.0 is marked fully verified.

## Requirements

- TempleOS
- x86-64 environment supported by TempleOS
- HolyC compiler provided by TempleOS

HolyFetch uses TempleOS kernel interfaces directly and is intended to be compiled inside TempleOS rather than by a conventional host C compiler.

## Version

Current development version: **v0.1.0**

## Roadmap

- Verify the corrected memory value in TempleOS/QEMU
- Final visual pass on the logo and output
- Finalize the v0.1.0 release

## License

MIT
