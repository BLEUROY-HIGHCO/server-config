
if [ -d $HOME/.vim ] || [ -h $HOME/.vim ]
then
    echo '.vim file already exists, delete it ? (y/n)' && read reponse
    if [ "$reponse" == "y" ]
    then
        rm $HOME/.vim
    else
        exit
    fi
fi

if [ -f $HOME/.vimrc ] || [ -h $HOME/.vimrc ]
then
    echo '.vimrc file already exists, delete it ? (y/n)' && read reponse
    if [ "$reponse" == "y" ]
    then
        rm $HOME/.vimrc
    else
        exit
    fi
fi

if [ -f $HOME/.bashrc ] || [ -h $HOME/.bashrc ]
then
    echo '.bashrc file already exists, delete it ? (y/n)' && read reponse
    if [ "$reponse" == "y" ]
    then
        rm $HOME/.bashrc
    fi
fi

if [ -d $HOME/server-config ]
then
    echo 'server-config file already exists, delete it ? (y/n)' && read reponse
    if [ "$reponse" == "y" ]
    then
        rm $HOME/server-config
    else
        exit
    fi
fi


echo "\033[0;34mCloning Vim config\033[0m"

/usr/bin/env git clone https://github.com/BLEUROY-HIGHCO/server-config.git $HOME/server-config

echo "\033[0;34mUpdate submodules\033[0m"

/usr/bin/env cd $HOME/server-config
/usr/bin/env git submodule init
/usr/bin/env git submodule update

/usr/bin/env ln -s $HOME/server-config/.vim $HOME/.vim
/usr/bin/env ln -s $HOME/.vim/.vimrc $HOME/.vimrc


echo "\033[0;32m"'.__    .__       .__                         .__          '"\033[0m"
echo "\033[0;32m"'|  |__ |__| ____ |  |__   ____  ____   ___  _|__| _____   '"\033[0m"
echo "\033[0;32m"'|  |  \|  |/ ___\|  |  \_/ ___\/  _ \  \  \/ /  |/     \  '"\033[0m"
echo "\033[0;32m"'|   Y  \  / /_/  >   Y  \  \__(  <_> )  \   /|  |  Y Y  \ '"\033[0m"
echo "\033[0;32m"'|___|  /__\___  /|___|  /\___  >____/    \_/ |__|__|_|  / '"\033[0m"
echo "\033[0;32m"'     \/  /_____/      \/     \/                       \/  '"\033[0m"

echo "\n\n \033[0;32m....is now installed.\033[0m"

echo 'Prod ou recette (p/r)' && read reponse

if [ "$reponse" == "p" ]
then
    ln -s $HOME/server-config/bash/.bashrc_prod $HOME/.bashrc
else
if [ "$reponse" == "r" ]
then
    ln -s $HOME/server-config/bash/.bashrc_recette $HOME/.bashrc
fi
fi

echo "\033[0;32m"'.__    .__       .__                   ___.                 .__      '"\033[0m"
echo "\033[0;32m"'|  |__ |__| ____ |  |__   ____  ____   \_ |__ _____    _____|  |__   '"\033[0m"
echo "\033[0;32m"'|  |  \|  |/ ___\|  |  \_/ ___\/  _ \   | __ \\__  \  /  ___/  |  \  '"\033[0m"
echo "\033[0;32m"'|   Y  \  / /_/  >   Y  \  \__(  <_> )  | \_\ \/ __ \_\___ \|   Y  \ '"\033[0m"
echo "\033[0;32m"'|___|  /__\___  /|___|  /\___  >____/   |___  (____  /____  >___|  / '"\033[0m"
echo "\033[0;32m"'     \/  /_____/      \/     \/             \/     \/     \/     \/  '"\033[0m"

echo "\n\n \033[0;32m BASH ...is now installed.\033[0m"
