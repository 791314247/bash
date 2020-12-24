#########################################################################
# File    : list_usb_mesg.sh
# Abstract    :
# Author: XI'AN FLAG ELECTRIONCS CO ., LTD
# mail: xxxxxxxx@xx.com
# <h2><center>&copy; COPYRIGHT(c) 2020 Ac6</center></h2>>>)>>
# Created Time:2020年11月27日 星期五 09时38分37秒
#########################################################################
#!/bin/bash

dmesg | grep tty
read -p "按回车键退出"
