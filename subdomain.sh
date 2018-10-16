#/bin/sh


DS='\033[0m'

clear
banner () {
echo -e " \e[32;1m
 ______   __    __    _____   ______  _____    _____    __   __   
/ ____/\ /\_\  /_/\ /\  __/\ / ____/\/\ __/\  /\___/\  /_/\ /\_\  
) ) __\/( ( (  ) ) )) )(_ ) )) ) __\/) )__\/ / / _ \ \ ) ) \ ( (  
 \ \ \   \ \ \/ / // / __/ /  \ \ \ / / /    \ \(_)/ //_/   \ \_\ 
 _\ \ \   \ \  / / \ \  _\ \  _\ \ \\ \ \_   / / _ \ \\ \ \   / / 
)____) )  ( (__) )  ) )(__) ))____) )) )__/\( (_( )_) ))_) \ (_(  
\____\/    \/__\/   \/____\/ \____\/ \/___\/ \/_/ \_\/ \_\/ \/_/  
                                                                  $DS"

}


domain () {

	read -p "[+] Target	: " target

url= curl 'http://api.hackertarget.com/hostsearch/?q='$target > $target.tmp
}

cek(){
	  which curl > /dev/null 2>&1
      if [ "$?" -eq "0" ]; then
      echo -e "\e[31;1m curl -----------------------  \e[32;1m [OK] \e[0m"
       else
       	
       	echo ""
       	echo "DO U WANT INSTALL curl ? (YES|NO) "
       	read jawaban
       	if [[ $jawaban="YES" || $jawaban="yes" || $jawaban="y" || $jawaban="" ]]; then
       		apt-get update
       		apt-get install curl
       	else	
       		exit
       	fi
       	fi
       	sleep 1
}


banner
cek
domain