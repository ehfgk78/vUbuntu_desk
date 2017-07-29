# Zsh 

### reference
* www.zsh.org

### Zsh? 
  `Zsh` is a shell designed for interactive use, although it is also a powerful scripting language. Many of the useful features of `bash`, `ksh`, and `tcsh` were incorporated into zsh; many original features were added. 
  
#### The Zsh Startup Files
 `/etc/zshenv` ->  `~/.zshenv`  -> `/etc/zshrc` -> `~/.zshrc`  
#### Logging out
 `/etc/zlogout` -> `ZDOTDIR/.zlogout`
#### Parameter Expansion Flags 
 * `$` -> `man zshexpn`
#### Command line editing 
 `man zshzle`

## install
```
 $ sudo apt-get install zsh
 $ zsh --version                   #verify installation
 $ chsh -s $(which zsh)            #Make it your default shell
 $ echo $SHELL                     # after logout and login back
```
---
---

# oh-my-zsh
 Oh-My-Zsh is an open source, community-driven framework for managing your ZSH configuration. 
  - https://github.com/robbyrussell/oh-my-zsh/wiki

### Install
 ```
 $ sh -c "$(curl -fsSl https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
 ```
 or 
 ```
 $ sh -c "(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
 ```


### Customization
#### Overriding and adding plugins
 `~/.zshrc`
```
 plugins = (git bundler foobar) 
```
 Then, create a `foobar` directory inside the `plugins` folder and an initialization script to launch your plugin. 
  - Naming Convention
  ```
   zsh_custom
    +-- plugins
         +-- foobar
              +-- foobar.plugin.zsh
  ``` 
#### Overriding and adding themes          
 ```
 zsh_custom
  |__ themes
       |__ my_awesome_theme.zsh-theme

 .zshrc
 ZSH_THEME='my_awesome_theme"
 ```

