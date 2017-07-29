```
    $ pyenv install --list                         # 설치할 수 있는 python versions list 보기

    $ pyenv install anaconda3-4.1.1                # AnaConda3-4.1.1 설치하기
    
    $ pyenv versions                               # pyenv로 설치한 python versions를 보기
    
    $ pyenv virtualenv anaconda3-4.1.1 ac3411env   # 가상환경 ac3411env 만들기

    $ pyenv virtualenvs                            # 설치한 가상환경들을 살펴보기

```

```
    $ pyenv activate ac3411env                     # 가상환경 ac3411env로 들어가기

    (ac3411env) $ pyenv deactivate                 # 가상환경 ac3411env를 끝내기

    $ ls
```

```
    $ mkdir anaconda3411
     
    $ cd anaconda3411

    ~anaconda3411> $ touch .env
    ~anaconda3411> $ vim .env

    pyenv activate ac3411env
    :wq
```

``` 
    $ pyenv uninstall ac3411env

    $ pyenv virtualenvs

    $ pyenv versions
```
