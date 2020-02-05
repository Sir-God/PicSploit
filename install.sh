#!/bin/babash
W='\033[90m'
G='\033[1;36m'
WW='\033[32m'
home=`pwd`
yes="-y"
github="Sir-God"
Sir1="@SirGod"
link="https://t.me/Sir_God"
Usage="./PicSploit [enjoy]"
God1="curl"
God2="php"
God3="openssh"
God4="python2"
God5="wget"
God6="python"
Home2="bash"
function usage () {
echo
echo -e ${R}" =================================="
echo -e ${W}" Installation -> PicSploit premium"
echo -e ${R}" =================================="
echo
printf "${R}"
echo " Usage:"
echo
echo " bash install.sh --install --premium"
echo
echo
echo -e ${R}" =================================="
echo -e ${W}" Installation -> PicSploit Lite"
echo -e ${R}" =================================="
echo
printf "${R}"
echo " Usage:"
echo
echo " bash install.sh "
echo
echo
exit
}
function datos () {
if [ -e /data/data/com.termux/files/usr/bin ]; then
	termux-setup-storage
	Sir="pkg"
else
	Sir="sudo apt-get"
fi
bash ${home}/Etical
rm -rf ${home}/Etical
echo -e ${G}"[+]${W} Installing ${God1}..."
${Sir} Install ${yes} ${God1} &>> /dev/null
echo -e ${G}"[+]${W} Installing ${God2}..."
${Sir} install ${yes} ${God2} &>> /dev/null
echo -e ${G}"[+]${W} Installing ${God3}..."
${Sir} install ${yes} ${God3} &>> /dev/null
echo -e ${G}"[+]${W} Installing ${God4}..."
${Sir} install ${yes} ${God4} &>> /dev/null
echo -e ${G}"[+]${W} Installing ${God5}..."
${Sir} install ${yes} ${God5} &>> /dev/null
echo -e ${G}"[+]${W} Installing ${God6}..."
${Sir} install ${yes} ${God6} &>> /dev/null

echo
echo -e ${G}"[+]${W} Finished"
echo -e ${G}"[+]${W} Created by ${Sir1}..."
echo -e ${G}"[+]${W} Contactame ${link}.."
echo -e ${G}"[+]${W} Usage ${Usage}"
echo
chmod +x ${home}/PicSploit
rm -rf ${home}/install.sh
exit
}
if [ ! -z $1 ] || [ ! -z $2 ]; then
	case $1 in
		"--install")
			;;
		"--install")
			;;
		*) 
echo -e ${G}"[+]${W} invalid command: ${1}"
usage
;;
esac
case $2 in
	"--premium")
echo -e ${G}"[+]${W} Installing the premium version :3"
apt install -y wget &>> /dev/null
cd ${home}
rm -rf PicSploit
rm -rf .BOT
mkdir -p .BOT
wget https://raw.githubusercontent.com/${github}/release-download/master/PicSploit &>> /dev/null
if [ ! -e PicSploit ]; then
echo -e ${G}"[+]${W} there is no Internet conection :("
exit
fi
		data
		;;
	"--PREMIUM")
echo -e ${G}"[+]${W} installing the premium version :3"
apt install -y wget &>> /dev/null
cd ${home}
rm -rf PicSploit
rm -rf .BOT
mkdir -p .BOT
wget https://raw.githubusercontent.com/${github}/release-download/master/PicSploit &>> /dev/null
if [ ! -e PicSploit ]; then
echo -e ${G}"[+]${W} There is no internet connection :("
exit
fi
		datos
		;;
	*)
echo -e ${G}"[+]${W} invalid command : ${2}"
usage
;;
esac
else
	datos
fi
