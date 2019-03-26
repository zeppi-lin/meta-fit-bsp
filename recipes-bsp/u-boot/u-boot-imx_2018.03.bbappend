# only need extra paths if add files or patches
#FILESEXTRAPATHS_prepend := "${THISDIR}/${BP}:"
#FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}-${PV}:"

FIT_UBOOT_GITHUB_MIRROR = "git://github.com/zeppi-lin/uboot-imx.git"

SRCBRANCH = "imx_v2018.03_4.14.78_1.0.0_ga_dev"
SRCREV = "${AUTOREV}"

UBOOT_SRC = "${FIT_UBOOT_GITHUB_MIRROR};protocol=https"

