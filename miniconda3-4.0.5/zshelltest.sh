#!/bin/zsh
# zshell scripts test 
echo "zshell scripts 실행 테스트"
sudo apt-get update


# 실행권한 부여하기 

# $ ls -l zshelltest.sh
# -rw-rw-r-- 1 learn learn 93  7월 31 10:59 zshelltest.sh

# $ ./zshelltest.sh
# zsh: permission denied: ./zshelltest.sh

# $ chmod 755 zshelltest.sh

# $ ls - l zshelltest.sh
# -rwxr-xr-x 1 learn learn 323  7월 31 11:11 zshelltest.sh

# $ ./zshelltest.sh
# zshell scripts 실행 테스트
# Hit:1 http://kr.archive.ubuntu.com/ubuntu xenial InRelease
# Hit:2 http://kr.archive.ubuntu.com/ubuntu xenial-updates InRelease            
# Hit:3 http://kr.archive.ubuntu.com/ubuntu xenial-backports InRelease          
# Ign:4 http://dl.google.com/linux/chrome/deb stable InRelease                  
# Hit:5 http://dl.google.com/linux/chrome/deb stable Release                    
# Hit:6 http://security.ubuntu.com/ubuntu xenial-security InRelease             
# Hit:7 http://ppa.launchpad.net/git-core/ppa/ubuntu xenial InRelease      
# Hit:9 http://ppa.launchpad.net/moka/daily/ubuntu xenial InRelease
# Hit:10 http://ppa.launchpad.net/numix/ppa/ubuntu xenial InRelease
# Hit:11 http://ppa.launchpad.net/snwh/pulp/ubuntu xenial InRelease
# Hit:12 http://ppa.launchpad.net/webupd8team/atom/ubuntu xenial InRelease
# Reading package lists... Done 

