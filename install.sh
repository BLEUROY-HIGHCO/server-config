
if [ -d $HOME/.vim ] || [ -h $HOME/.vim ]
then
      echo "\033[0;33mYou already have a .vim dir installed.\033[0m You'll need to remove .vim if you want to install"
    exit
fi

if [ -f $HOME/.vimrc ] || [ -h $HOME/.vimrc ]
then
      echo "\033[0;33mYou already have a .vimrc installed.\033[0m You'll need to remove .vimrc if you want to install"
    exit
fi

if [ -f $HOME/.bashrc ] || [ -h $HOME/.bashrc ]
then
      echo "\033[0;33mYou already have a .bashrc installed.\033[0m You'll need to remove .bashrc if you want to install"
    exit
fi

if [ -d $HOME/server-config ]
then
      echo "\033[0;33mYou already have a server-config dir installed.\033[0m You'll need to remove server-config if you want to install"
    exit
fi


echo "\033[0;34mCloning Vim config\033[0m"

#/usr/bin/env git clone https://github.com/BLEUROY-HIGHCO/server-config.git $HOME/server-config

echo "\033[0;34mUpdate submodules\033[0m"

#cd $HOME/server-config
#git submodule init
#git submodule update

#ln -s $HOME/server-config/.vim $HOME/.vim
#ln -s $HOME/.vim/.vimrc $HOME/.vimrc


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


echo "\n\n \033[0;32m BASH ...is now installed.\033[0m"
