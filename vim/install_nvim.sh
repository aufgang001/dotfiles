#!/bin/bash

nvim_path="${HOME}/.config/nvim"

if [ "$1" = "all" ]; then
  ./$0 preperation
  ./$0 install_neovim
  ./$0 vim_plug 
  ./$0 undotree 
  ./$0 link_nvim_config 
  ./$0 set_install_rc
  nvim -c "call InstallMe()"
  ./$0 set_init_rc
fi

if [ "$1" = "preperation" ]; then  
  sudo apt install -y libtool libtool-bin autoconf automake cmake g++ pkg-config unzip
  sudo apt install -y python-dev python-pip python3-dev python3-pip
  sudo pip2 install --upgrade pip
  sudo pip3 install --upgrade pip
fi

if [ "$1" = "install_neovim" ]; then  
  git clone https://github.com/neovim/neovim
  cd neovim
  make
  sudo make install
  # Add python suport #
  sudo pip2 install --upgrade neovim
  sudo pip3 install --upgrade neovim
fi

if [ "$1" = "vim_plug" ]; then  
  curl -fLo $nvim_path/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

if [ "$1" = "undotree" ]; then  
  mkdir -p $nvim_path/undo
fi

if [ "$1" = "link_nvim_config" ]; then
  current_dir=$(pwd)
  cd $nvim_path 
  ln -sf $current_dir/nvim_config
fi

if [ "$1" = "set_install_rc" ]; then
  echo "source $nvim_path/nvim_config/install_rc.vim" > $nvim_path/init.vim 
fi

if [ "$1" = "set_init_rc" ]; then
  echo "source $nvim_path/nvim_config/init.vim" > $nvim_path/init.vim 
fi
