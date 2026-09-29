# Changelog

All notable changes to HolyFetch are documented here.

## [0.1.0] - Unreleased

### Added

- Initial HolyC implementation
- TempleOS and architecture reporting
- CPU brand detection through CPUID
- Logical CPU count
- Physical memory reporting
- Uptime reporting
- Native graphics resolution reporting
- DolDoc color output
- Compact TempleOS-style ASCII logo

### Tested

- Compiled and executed successfully in TempleOS under QEMU
- Verified CPU, core count, uptime, resolution, and color output

### Fixed

- Replaced the initial `mem_physical_space` based memory calculation with TempleOS `MemBIOSTotal()`

### Pending

- One final runtime verification of the corrected memory value before the v0.1.0 release is finalized
