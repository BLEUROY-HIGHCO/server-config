Highco Server config
====================

For vim, look at [stephpy-vim-config](https://github.com/stephpy/vim-config), this is the same config, without:
- ACK bundle, which needs ack to be installed
- phpcs bundle, which needs PhpCodeSniffer to be installed
- taglist bundle, which needs Exhuberant Ctags to be installed

## Config useful

    let g:pdv_cfg_Author="Stephane PY <py.stephane1(at)gmail.com>" " change the authorname for phpdoc
    let g:NERDTreeShowHidden=1                                     " show hidden files on nerdtree

    coloscheme molokai

##Shortcuts:

- CTRL + C             -> to comment line(s) selected
- CTRL + X             -> to uncomment line(s) selected
- CTRL + Y             -> Open NerdTree nafication
- CTRL + D             -> document a method, class, var
- CTRL + P             -> Open FUCKING GREAT SEARCH !
- \be                  -> Show buffer
- CTRL + H             -> Adding namespace of a file and the class name (php 5.3)

# Bash

@todo Write documentation

# To install

````shell
wget --no-check-certificate https://raw.github.com/BLEUROY-HIGHCO/server-config/master/install.sh -O ./install.sh && chmod +x ./install.sh && ./install.sh
````
