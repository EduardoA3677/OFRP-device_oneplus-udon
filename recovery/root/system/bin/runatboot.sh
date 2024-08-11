#!/system/bin/sh

rmmod adsp_loader_dlkm && insmod /vendor/lib/modules/adsp_loader_dlkm.ko
rmmod gpr_dlkm && insmod /vendor/lib/modules/gpr_dlkm.ko
rmmod q6_dlkm && insmod /vendor/lib/modules/q6_dlkm.ko
rmmod q6_notifier_dlkm && insmod /vendor/lib/modules/q6_notifier_dlkm.ko
rmmod q6_pdr_dlkm && insmod /vendor/lib/modules/q6_pdr_dlkm.ko
rmmod snd_event_dlkm && insmod /vendor/lib/modules/snd_event_dlkm.ko
rmmod spf_core_dlkm && insmod /vendor/lib/modules/spf_core_dlkm.ko

