for i in /data/data/com.termux/files/usr/etc/profile.d/*.sh; do
	if [ -r $i ]; then
		. $i
	fi
done
unset i

# Source etc/bash.bashrc and ~/.bashrc also for interactive bash login shells:
if [ "$BASH" ]; then
        if [[ "$-" == *"i"* ]]; then
                if [ -r /data/data/com.termux/files/usr/etc/bash.bashrc ]; then
                        . /data/data/com.termux/files/usr/etc/bash.bashrc
                fi
                if [ -r /data/data/com.termux/files/home/.bashrc ]; then
                        . /data/data/com.termux/files/home/.bashrc
                fi
        fi
fi

clear
#echo "___________________________________________________" | lolcat
#figlet -f slant JouleHack | lolcat
#echo "___________________________________________________" | lolcat
tgl=`date +%d-%m-%y`
jam=`date +%T`
echo "Welcome Akhmad Afiullah" | lolcat
terakhir=`tail -n 1 ~/last.log`
echo "Terakhir Log In : $terakhir" | lolcat
echo "Log In          : Tanggal $tgl Pukul $jam" | lolcat
echo "Tanggal $tgl Pukul $jam" >> ~/masuk.log
cat masuk.log | head -n -1 > last.log
echo "______________________________________________________" | lolcat
