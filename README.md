# rpivm

## Overview

`rpivm` is a set of scripts designed to facilitate the setup and running of QEMU-based virtual machines using Raspberry Pi hardware specifications. This includes converting disk images, setting up virtual network configurations, and managing guest OSes.

## Key Features

- **Supported Architectures**: AArch64
- **CPU Models**: cortex-a76
- **Memory Allocation**: 4GB
- **Storage Formats**: QEMU QCOW2 format

## Usage Instructions

### Copy Kernel and Initram from Pop_OS! Image

If you have a Pop_OS! image, you can copy its kernel and initram from it.

### Convert Disk Image

Convert a raw disk image to a QCOW2 format:

```bash
./convert-image.sh input.raw output.qcow2
```


### Run Virtual Machine

Run the virtual machine using `run.sh`. Replace `<path_to_image>` with the path to your QEMU image file.

```bash
./run.sh <path_to_image>
```

### Network Configuration

The scripts use a user mode network setup. This allows for host-to-guest and guest-to-host communication on port 2222, which is forwarded from localhost to the VM's SSH server.

## Example Usage

To convert an image file named `server.img` to a QCOW2 format:

```bash
./convert-image.sh server.img converted_server.qcow2
```

Then, run the virtual machine:

```bash
./run.sh converted_server.qcow2
```

## Troubleshooting

- Ensure QEMU is installed on your system. You can install it using Homebrew: `brew install qemu`.

## Contact Information

If you encounter any issues or have questions, please contact [Your Name] at [your email address].

## License

This project is licensed under the MIT license. See the LICENSE file for more details.
