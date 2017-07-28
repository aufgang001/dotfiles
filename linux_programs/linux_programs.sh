#!/bin/bash

function ask_for {
    while true; do 
        echo $1
        read -n 1 input
        if [ $input = "Y" ] || [ $input = "y" ]; then
            return 1
        elif [ $input = "N" ] || [ $input = "n" ]; then
            return 0 
        fi
    done
}

if [ $1 = "all" ]; then
    ./linux_programs.sh programs    
    ./linux_programs.sh truecrypt 
    ./linux_programs.sh spideroak 
fi

if [ $1 = "programs" ]; then
    python3 linux_easy_install.py --check all
    if [ $? != 0 ]; then
        ask_for "Not all programs can be installed. Shall I ignore these files? (Y/n)"
        if [ $? = 0 ]; then
            exit 0
        fi
    fi

    python3 linux_easy_install.py --install all
fi

if [ $1 = "truecrypt" ]; then
    rm truecrypt-7.1a-linux-x64.tar.gz
    wget https://www.truecrypt71a.com/dl/truecrypt-7.1a-linux-x64.tar.gz
    v=$(ls -Al)
    calc_sum=$(sha256sum truecrypt-7.1a-linux-x64.tar.gz)
    known_sum="43f895cfcdbe230907c47b4cd465e5c967bbe741a9b68512c09f809d1a2da1e9  truecrypt-7.1a-linux-x64.tar.gz"
    if [ "$calc_sum" = "$known_sum" ]; then
        tar -axf truecrypt-7.1a-linux-x64.tar.gz
        ./linux_programs.sh run_and_clean_truecrypt &
    else 
        echo "Failed to install truecrypt! Checksum is incorrect."
    fi
fi

if [ $1 = "run_and_clean_truecrypt" ]; then
  ./truecrypt-7.1a-setup-x64
  rm truecrypt-7.1a-linux-x64.tar.gz
  rm truecrypt-7.1a-setup-x64
fi

if [ $1 = "spideroak" ]; then
  wget https://spideroak.com/release/spideroak/deb_x64 --output-document spideroak.deb
  sudo dpkg -i spideroak.deb
  rm spideroak.deb
  sudo apt install -y spideroakone
fi
