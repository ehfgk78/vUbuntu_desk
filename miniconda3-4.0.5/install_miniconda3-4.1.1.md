```
    $ pyenv install --list                         # 설치할 수 있는 python versions list 보기

    $ pyenv install miniconda3-4.0.5               # miniConda3-4.0.5 설치하기
    
    $ pyenv versions                               # pyenv로 설치한 python versions를 보기
    
    $ pyenv virtualenv miniconda3-4.0.5 conda3405  # 가상환경 conda3405 만들기

    $ pyenv virtualenvs                            # 설치한 가상환경들을 살펴보기

```

```
    $ pyenv activate conda3405                     # 가상환경 conda3405로 들어가기

    (conda3405) $ pyenv deactivate                 # 가상환경 conda3405를 끝내기

    $ ls
```

```
    $ mkdir miniconda3-4.0.5
     
    $ cd miniconda3-4.0.5

    ~ miniconda3-4.0.5> $ touch .env
    ~ miniconda3-4.0.5> $ vim .env

    pyenv activate conda3405
    :wq
```

``` 
    $ pyenv uninstall conda3405

    $ pyenv virtualenvs

    $ pyenv versions
```
