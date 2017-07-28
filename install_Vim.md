# VIM, Vi IMproved

### Reference
  - www.vim.org

### Download, Install
```
$ sudo apt-get update (&& sudo apt-get dist-upgrade)
$ sudo apt-get install vim
```

### Setting:  .vimrc
``` $ vi ~/.vimrc ```
```
set autoindent
set smartindent
set cindent
set number       # 행번호 붙이기
set showmatch
set tabstop=4
syntax enable
syntax on

:wq!
```
` $ vi ~/.bashrc ` or `$ vi ~/.zshrc`
``` alias vi = `vim` ```

