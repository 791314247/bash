#########################################################################
# File    : cleanProjectScript.sh
# Abstract    :
# Author: WR
# mail: 791314247@qq.com
# <h2><center>&copy; COPYRIGHT(c) 2020 Ac6</center></h2>>>)>>
# Created Time:2020年12月01日 星期二 14时46分49秒
#########################################################################
#!/bin/bash

#common
file_type=".*\.o"
file_type+="\|.*\.d"
file_type+="\|.*\.map"
file_type+="\|.*\.svn"

#keil
file_type+="\|.*\.crf"
file_type+="\|.*\.axf"
file_type+="\|.*\.lnp"
file_type+="\|.*\.dep"
file_type+="\|.*\.Bak"

#IAR
file_type+="\|.*\.xcl"
file_type+="\|.*\.browse"
file_type+="\|.*\.linf"
file_type+="\|.*\.pbi"
file_type+="\|.*\.pbd"
file_type+="\|.*\.pbw"
file_type+="\|.*\.sim"
file_type+="\|.*\.cout"
file_type+="\|.*\.out"

#CS
file_type+="\|.*\.rel"
file_type+="\|.*\.sym"
file_type+="\|.*\.lmf"

echo finding...
find ./ -regex $file_type -print0| xargs -0 -t -L 1 rm -r
read -p "按回车键退出！"

