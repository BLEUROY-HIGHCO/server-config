today=`date +%Y%m%d`
if [ -d $HOME/.vim ] || [ -h $HOME/.vim ]
then
    echo '.vim file already exists, backup it ? (y/n)' && read response && \
    if [ "$response" == "y" ]
    then
        mv $HOME/.vim $HOME/.vim.$today
    else
        rm -rf $HOME/.vim
    fi
fi

if [ -f $HOME/.vimrc ] || [ -h $HOME/.vimrc ]
then
    echo '.vimrc file already exists, backup it ? (y/n)' && read response && \
    if [ "$response" == "y" ]
    then
        mv $HOME/.vimrc $HOME/.vimrc.$today
    else
        rm $HOME/.vimrc
    fi
fi

if [ -f $HOME/.bashrc ] || [ -h $HOME/.bashrc ]
then
    echo '.bashrc file already exists, backup it ? (y/n)' && read response && \
    if [ "$response" == "y" ]
    then
        mv $HOME/.bashrc $HOME/.bashrc.$today
    else
        rm $HOME/.bashrc
    fi
fi

if [ -d $HOME/server-config ]
then
    echo 'server-config file already exists, backup it ? (y/n)' && read response && \
    if [ "$response" == "y" ]
    then
        mv $HOME/server-config $HOME/server-config.$today
    else
        rm -rf $HOME/server-config
    fi
fi


echo -e "\033[0;34mCloning Vim config\033[0m"

/usr/bin/env git clone git://github.com/BLEUROY-HIGHCO/server-config.git $HOME/server-config

echo -e "\033[0;34mUpdate submodules\033[0m"

cd $HOME/server-config

ln -s $HOME/server-config/.vim $HOME/.vim
ln -s $HOME/server-config/.vimrc $HOME/.vimrc

echo "\033[0;34mInstalling vundle \033[0m"
mkdir $HOME/.vim/bundle
git clone http://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle

echo -e "\033[0;32m"'.__    .__       .__                         .__          '"\033[0m"
echo -e "\033[0;32m"'|  |__ |__| ____ |  |__   ____  ____   ___  _|__| _____   '"\033[0m"
echo -e "\033[0;32m"'|  |  \|  |/ ___\|  |  \_/ ___\/  _ \  \  \/ /  |/     \  '"\033[0m"
echo -e "\033[0;32m"'|   Y  \  / /_/  >   Y  \  \__(  <_> )  \   /|  |  Y Y  \ '"\033[0m"
echo -e "\033[0;32m"'|___|  /__\___  /|___|  /\___  >____/    \_/ |__|__|_|  / '"\033[0m"
echo -e "\033[0;32m"'     \/  /_____/      \/     \/                       \/  '"\033[0m"

echo -e "\n\n \033[0;32m....is now installed.\033[0m"

echo 'Prod ou recette (p/r)' && read response && \
if [ "$response" == "p" ]
then
    ln -s $HOME/server-config/bash/.bashrc_prod $HOME/.bashrc
else
if [ "$response" == "r" ]
then
    ln -s $HOME/server-config/bash/.bashrc_recette $HOME/.bashrc
fi
fi

echo -e "\033[0;32m"'.__    .__       .__                   ___.                 .__      '"\033[0m"
echo -e "\033[0;32m"'|  |__ |__| ____ |  |__   ____  ____   \_ |__ _____    _____|  |__   '"\033[0m"
echo -e "\033[0;32m"'|  |  \|  |/ ___\|  |  \_/ ___\/  _ \   | __ \\__  \  /  ___/  |  \  '"\033[0m"
echo -e "\033[0;32m"'|   Y  \  / /_/  >   Y  \  \__(  <_> )  | \_\ \/ __ \_\___ \|   Y  \ '"\033[0m"
echo -e "\033[0;32m"'|___|  /__\___  /|___|  /\___  >____/   |___  (____  /____  >___|  / '"\033[0m"
echo -e "\033[0;32m"'     \/  /_____/      \/     \/             \/     \/     \/     \/  '"\033[0m"

echo -e "\n\n \033[0;32m BASH ...is now installed.\033[0m"

source $HOME/.bashrc \
bash

echo "\n\n \033[0;32m WAIT FOR VIM ....LAUNCH !\033[0m"

vim +BundleInstall +qa
