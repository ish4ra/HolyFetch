# HolyFetch

A lightweight TempleOS system information tool written entirely in HolyC. Inspired by Neofetch.

## Features

- TempleOS-native HolyC implementation
- Displays OS and x86-64 architecture
- Displays detected logical CPU count
- Displays physical memory size
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

The implementation is source-checked against TempleOS interfaces. Final v0.1.0 release is pending an in-TempleOS runtime test.

## Roadmap

- Verify output on a clean TempleOS installation
- Add CPU brand information using TempleOS CPUID support
- Refine the TempleOS-style logo and layout

## License

MIT
