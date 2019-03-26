# only need extra paths if add files or patches
#FILESEXTRAPATHS_prepend := "${THISDIR}/${BP}:"
#FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}-${PV}:"

FIT_LINUX_GITHUB_MIRROR = "git://github.com/zeppi-lin/linux-imx.git"

SRCBRANCH = "imx_4.14.78_1.0.0_ga_dev"
SRCREV = "${AUTOREV}"

KERNEL_SRC = "${FIT_LINUX_GITHUB_MIRROR};protocol=https"

do_copy_defconfig () {
    # copy fit-v2 defconfig
    echo "copy fit-v2 defconfig"
    mkdir -p ${B}
    cp ${S}/arch/arm/configs/imx_fit-v2_defconfig ${B}/.config
    cp ${S}/arch/arm/configs/imx_fit-v2_defconfig ${B}/../defconfig
}

COMPATIBLE_MACHINE = "(mx6|fit-v2)"
