# Ubuntu 16.04 LTS Xenial Xerus

### 설치목적 
* python, conda, Tensorflow, docker 기본 환경

### Reference
* https://www.ubuntu.com/download/desktop
* FastCampus 
  - 웹 서비스 구축으로 배우는 리눅스와 인프라 CAMP
  - 조만석 Mario Cho
  - email: hephaex@gmail.com
  - github: https://github.com/hephaex

### Settings
1. keyboard layout : America
2. Network - enp0s3 - NAT - 다른 프로그램들을 네트워크 설치하려고 
3. Host name, user full name, user for account, password
4. 시작 폴더 암호화 No 
5. disk partition:  자동- 디스크 전체 사용 - 파티션 포맷 Yes
6. proxy 설정 No
7. tasksel : 자동 업데이트 하지 않음
8. 소프트웨어 선택 : standard system utilities + OpenSSH server
9. GRUB 부트로더 : 부팅 후 커널 연결

### After installation
1. Network Setting
` $ sudo vi /etc/network/interfaces`
```
auto enp0s3
iface enp0s3 inet dhcp
auto enp0s8
iface enp0s8 inet static
address 192.168.56.10
netmask 255.255.255.0

:wq!
```
* 확인  
`$ cat /etc/network/interfaces`

* 네트워크 설정 반영
``` $ sudo reboot ```

* 설치를 안했을 경우 `$ sudo apt-get install openssh-server`

* 검증 `$ sudo service ssh status`

2. Repository Update & Upgrade
`$ sudo apt-get update && sudo apt-get dist-upgrade


