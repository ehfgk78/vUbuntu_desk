# Simple Python Version Management:  pyenv
  - `pyenv` let you easily switch between multiple versions of Python. 
  - https://github.com/pyenv/pyenv 
  - https://github.com/pyenv/pyenv-installer
---

### pyenv does ...
    * Let you **Change the global Python version** on a per-user basis.
    * Provide support for **per-project Python versions**. 
    * Allow you to **override the Python version** with an environment variable
    * Search commands from **multiple versions of Python at a time**.

### pyenv does not ... in contrast with pythonbrew and pythonz
    * **Depend on Python itself**. pyenv was made form pure shell scripts. There is no bootstrap problem of Python
    * **Need to be loaded into your shell**. Instead, pyenv's shim approach works by adding a directory to your `$PATH`
    * **Manage virtualenv**. Of course, you can create virtualenv yourself, or pyenv-virtualenv to automate the process

### pyenv installer : github way(recommended) : Installation/Update/Uninstallation
```
 $ curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash

 $ pyenv update   

 $ rm -fr ~/.pyenv  # Uninstall
```
* remove these three lines from `.bashrc`
```
   export PATH="~/.pyenv/bin:$PATH"
   eval "$(pyenv init -)"
   eval "$(pyenv virtualenv-init -)"
```
* Basic Github Checkout
1. **Check out pyenv where you want it installed**  ex) $HOME/.pyenv
```
     $ git clone https://github.com/pyenv/pyenv.git  ~/.pyenv
```
2. **Define environment variable `PYENV_ROOT`** to point to the path where pyenv repo is cloned and add `$PYENV_ROOT/bin` to your `$PATH` for access to the `pyenv` command-line utility. 
```
     $ echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
     $ echo 'export PATH="PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
```
3. **Add `pyenv init` to your shell** to enable shims and autocompletion. Please make sure `eval "$(pyenv init -)"` is placed toward the end of the shell configuration file since it manipulates `PATH` during initialization.
```
     $ echo 'eval "$(pyenv init -)"' >>  ~/.bashrc
```
4. **Restart your shell so the path chages take effect.**
```
     $ exec $SHELL
```
5. **install Python versions into `$(pyenv root)/versions`**
```
     $ pyenv install 3.6.1
```
---
---

# pyenv-virtualenv
  * pyenv-virtualenv is a pyenv plugin that provides features to manage virtualenvs and conda environments for Python on Unix-like systems. 
  * https://github.com/pyenv/pyenv-virtualenv

### Installation
1. **Chech out pyenv-virtualenv into plugin directory**
```
   $ git clone https://github.com/pyenv/pyenv-virtualenv.git  $(pyenv root)/plugins/pyenv-virtualenv
```
2. (OPTIONAL) **Add `pyenv virtualenv-init` to your shell** to enable auto-activation of virtualenv. 
```
   $ echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc
```
3. **Restart your shell**
```
   $ exec "$SHELL"
```

### Usage

1. pyenv
```
   $ pyenv install 3.6.1
   Downloading Python-3.6.1.tar.xz...
   -> https://www.python.org/ftp/python/3.6.1/Python-3.6.1.tar.xz
   Installing Python-3.6.1...

   $ pyenv versions
   * system (set by /home/nelp/.pyenv/version)
     3.6.1

   $ pyenv shell 3.6.1
   $ python
   Python 3.6.1 (default, Jun 4 2017, 05:30:18)
   [GCC 5.4.0 20160609] on linux
   Type "help", "copyright", "credits" or "license" for more information.
   >>>
```

2. pyenv-virtualenv

```
   $ pyenv virtualenv 3.6.1 test-env
   $ pyenv versions
     system
   * 3.6.1
     3.6.1/envs/test-env
     test-env (set by PYENV_VERSION environment variable)

   $ pyenv activate test-env

   (test-env) $ pyenv versions
     system
     3.6.1
     3.6.1/env/test-env
   * test-env (set by PYENV_VERSION environment variable)

   (test-env) $ python -V
   Python 3.6.1

   (test-env) $ pyenv deactivate

   $ ls 
```

3. autoenv

```
   $ git clone git://github.com/kennethreitz/autoenv.git  ~/.autoenv
   
   $ vi ~/.bashrc
    source ~/.autoenv/activate.sh
    :wq
   $ source ~/.bashrc
```
   
```
   $ mkdir test-dir
   $ cd test-dir
   $ touch .env
   $ echo "pyenv activate test-env" > .env
```

```
   $ cd test-dir
   autoenv:
   autoenv: WARNING:
   autoenv: This is the first time you are about to source /home/test-env/.env:
   autoenv:
   autoenv:  --- (begin contents) -----------------------------------------
   autoenv:    pyenv activate test-env$
   autoenv:  
   autoenv:  --- (end contents) -------------------------------------------
   autoenv:
   autoenv:  Are you sure you want to allow this? (y/N) y
```


