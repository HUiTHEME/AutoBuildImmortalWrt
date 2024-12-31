#!/bin/sh


# 网络设置
if [ "$count" -eq 1 ]; then
  uci set network.lan.proto='dhcp'
elif [ "$count" -gt 1 ]; then
  uci set network.lan.ipaddr='10.0.0.1'
fi


# 设置编译作者信息
FILE_PATH="/etc/openwrt_release"
NEW_DESCRIPTION="Crazy uncle"
sed -i "s/DISTRIB_DESCRIPTION='[^']*'/DISTRIB_DESCRIPTION='$NEW_DESCRIPTION'/" "$FILE_PATH"

exit 0
