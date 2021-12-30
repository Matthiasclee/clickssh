#OneClickSSH v1.0
#© Matthias Lee 2021, All rights reserved
#
clear
echo Progress: \|░░░░░░░░░░\|
if [[ $# == 0 ]]; then
	echo "ERROR: No parameters specified"
else
hst="$2@$3"
pemreq="fl"
pem=""
clear
echo Progress: \|▓▓░░░░░░░░\|
if [[ $# == 3 ]]; then
	pemreq="tr"
	pem="$4"
fi
clear
echo Progress: \|▓▓▓▓░░░░░░\|
if [[ $pemreq == "tr" ]]; then
	fnl="ssh -i \"$pem\" $hst"
elif [[ $pemreq == "" ]]; then
	#statements
	fnl="ssh $hst"
fi
clear
echo Progress: \|▓▓▓▓▓▓░░░░\|
nmb=$((1000 + $RANDOM % 9999))
clear
echo Progress: \|▓▓▓▓▓▓▓▓░░\|
echo "#Made with OneClickSSH by Matthias Lee\n$fnl" > "$1.sh"
./shelltoexec "$1.sh"
rm "$1.sh"
fi
clear
echo Progress: \|▓▓▓▓▓▓▓▓▓▓\|