## 10.CLCD.sh
# Title        : Scrolling Game Title for Retropie v4.1 using 16x2 CLCD on hakjongholic ORIGAMI MINI STATION
# Author       : hakjongholic
# Creation Date: Jan 06, 2017
# Blog         : http://blog.naver.com/i032co2p
# Free and open for all to use. But put credit where credit is due.
#
# How to Setup : 
# cd /home/pi
# git clone https://github.com/hakjongholic/RetroPie-Clcd-Mini.git
# cd /home/pi/RetroPie-Clcd-Mini/
# chmod 755 10.CLCD.sh
# sudo ./10.CLCD.sh

cd /home/pi/
git clone https://github.com/hakjongholic/RetroPie-Clcd-Mini.git
cd RetroPie-Clcd-Mini/
cp runcommand-onstart.sh /opt/retropie/configs/all/
cp runcommand-onend.sh /opt/retropie/configs/all/
cp clcd.service /lib/systemd/system/
systemctl enable clcd
echo "CLCD Setup Complete."
echo "I2C Setup is Starting Now"
sleep 1
apt-get update
apt-get -y install python-smbus i2c-tools
echo "i2c-bcm2708" >> /etc/modules
echo "i2c-dev" >> /etc/modules
sed -i 's/#dtparam=i2c_arm/dtparam=i2c_arm/' /boot/config.txt
#echo "dtparam=i2c_arm=on" >> /boot/config.txt 
echo "I2C Setup Complete. Reboot after 3 Seconds."
sleep 3
reboot