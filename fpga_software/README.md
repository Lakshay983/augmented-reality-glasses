# Device Tree File naming scheme

## Original

The original DTB and .bit files obtained from the board should have .Original at the end. They're located in the `deviceTree/dtb_files` and `pl_dump` folders.

## Test DTBs and Bitstreams
Test bit streams and dtbs should have test appended to the end of them.

## Working DTBs and Bitstreams
Bitstreams and dtbs that have been tested and work should have the date and `-[change]` appended to the end. Usually the DTB and associated .bit file should have the same comment.

# Petalinux compilation commands
## Sourcing settings
```sh
source /usr/local/packages/petalinux_2022.2/settings.sh
```
## Compiling the device tree
Enter the petalinux project directory.  
```sh
petalinux-build -c device-tree
```

## Device tree includes
The `system-user.dtsi` include is in `project-spec/meta-user/recipes-bsp/device-tree/files` we maintain a copy in `/dtsi_files` in this repository, if any changes are made to the dtsi, then the device tree should be recompiled.

## Getting the device tree
The device tree is found in `images/`