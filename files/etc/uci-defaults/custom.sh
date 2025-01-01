#!/bin/sh


# 默认ip
uci set network.lan.ipaddr='10.0.0.1'


# 配置WAN口为PPPoE拨号模式
uci set network.wan.proto='pppoe'
uci set network.wan.username='02188888888'
uci set network.wan.password='888888'
uci set network.wan.ifname='eth1'


# 提交并应用配置
uci commit network


# 退出状态码
exit 0
