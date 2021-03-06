#!/bin/sh
append DRIVERS "mt7602e"

. /lib/wifi/ralink_common.sh

prepare_mt7602e() {
	prepare_ralink_wifi mt7602e
}

scan_mt7602e() {
	scan_ralink_wifi mt7602e mt76x2e
}

disable_mt7602e() {
	disable_ralink_wifi mt7602e
}

enable_mt7602e() {
	enable_ralink_wifi mt7602e mt76x2e
}

detect_mt7602e() {
#	detect_ralink_wifi mt7602e mt76x2e
	ssid=FireWRT-2.4G-`ifconfig eth0 | grep HWaddr | cut -c 51- | sed 's/://g'`
	cd  /sys/module/
	[ -d $module ] || return
        [ -e /etc/config/wireless ] && return
         cat <<EOF
config wifi-device      mt7602e
        option type     mt7602e
        option hwmode   11n
        option htmode   HT40
        option channel  auto

config wifi-iface
        option device   mt7602e
        option ifname   ra0
        option network  lan
        option mode     ap
        option ssid     Lede-MT7603e
        option encryption psk2+ccmp
        option key      12345678

EOF

}


