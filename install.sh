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

if [ -d $HOME/vim-config ]
then
      echo "\033[0;33mYou already have a vim-config dir installed.\033[0m You'll need to remove vim-config if you want to install"
    exit
fi


echo "\033[0;34mCloning Vim config\033[0m"

/usr/bin/env git clone https://github.com/BLEUROY-HIGHCO/vim-config.git $HOME/vim-config

echo "\033[0;34mUpdate submodules\033[0m"

cd $HOME/vim-config
git submodule init
git submodule update

ln -s $HOME/vim-config/.vim $HOME/.vim
ln -s $HOME/.vim/.vimrc $HOME/.vimrc


echo "\033[0;32m"'.__    .__       .__                         .__          '"\033[0m"
echo "\033[0;32m"'|  |__ |__| ____ |  |__   ____  ____   ___  _|__| _____   '"\033[0m"
echo "\033[0;32m"'|  |  \|  |/ ___\|  |  \_/ ___\/  _ \  \  \/ /  |/     \  '"\033[0m"
echo "\033[0;32m"'|   Y  \  / /_/  >   Y  \  \__(  <_> )  \   /|  |  Y Y  \ '"\033[0m"
echo "\033[0;32m"'|___|  /__\___  /|___|  /\___  >____/    \_/ |__|__|_|  / '"\033[0m"
echo "\033[0;32m"'     \/  /_____/      \/     \/                       \/  '"\033[0m"

echo "\n\n \033[0;32m....is now installed.\033[0m"
