# !/bin/bare

if test "$1" == "down"
then
read -p "Please input hex name:" name
name=${name}".hex"
echo $name
openocd -f interface/jlink.cfg  -f target/stm32f4x.cfg -c init -c halt -c "flash write_image erase $(TOP)./$name" -c reset -c shutdown

elif test "$1" == "connect"
then
openocd -f /usr/local/share/openocd/scripts/interface/jlink.cfg -f /usr/local/share/openocd/scripts/target/stm32f4x.cfg

else
echo "No parameters were entered !"
echo -e "Optional command:\ndown connect"

fi

