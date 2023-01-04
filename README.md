<p align="center">
# OpenNitro
</p>

The OpenNitro (NTR) project is an open-source implementation of the Nintendo DS (NTR) BIOS.

## Goals

- Provide a fully-functional, open-source ARM7 and ARM9 BIOS for the NTR (original Nintendo DS) device.
- Fix a couple of bugs in the official implementation, such as in the CPUFastCopy routine to improve performance.

### Non-goals

- Binary parity - due to the vastly different tooling available today, it is practically impossible to achieve binary parity across the entire BIOS without writing Rust code that loses all intelligibility. That being said, functions will be located at the same offsets as in the original binary where possible.

## Current progress

- [ ] ARM7 BIOS (__WIP__)
- [ ] ARM9 BIOS (__NOT STARTED__)

