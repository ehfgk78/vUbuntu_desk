# VitualBox

### 가상화 목적 
* docker 기본환경이 Linux이고 Windows와 어울리지 않는다. 
* Opensource들이 Linux Ubuntu를 지원한다. 
* Ubuntu Server, Ubunutu Desktop등 Linux환경에 대한 이해와 직접 경험이 필요하다.
* Virtual Machine을 여러 개 운영할 수 있고, 이는 '분산형 시스템'에 도움된다. 
* DataScience의 R, Python, machine learning, deep learning이 Linux OS에 적합하다. 

### Reference
* `https://www.virtualbox.org/manual/`
* fastcampus: 웹 서비스 구축으로 배우는 리눅스와 인프라 CAMP
 - Mario Cho
 - email:  hephaex@gmail.com

### Setting
1. `BIOS` setting: CPU Virtualization Technology : `AMD-V`, Intel-VT
2. [1.4.] Supported host operating systems : `Windows 10` RTM build 10240 64-bit
3. [1.5.] `Installing` VirtualBox and extension packs
   - Chapter 2. Installation details
4. [1.6.] Starting VirtualBox : `VirtualBox Manager`
   - 확장 패키지 : Oracle VM VirtualBox Extension Pack : `File > 환경설정 > 확장`
   - VBox > File > 환경설정 > Nat + `Host Only 추가`
5. Creating your first `virtual machine`
  1) VM name
  2) Operating System Type : 64-bit guests -> Section 3.1.2.
  3) memory (RAM) : `host OS가 25~50%를 차지하도록 설정해야함(rule of thumb)`
  4) `virtual Hard Disk` --> Ch5. Virtual storage --> Create New Virtual Disk Wizard
     - `dynamically allocated file`  or fixed-size file
     - see Section 5.2. "Disk image files (`VDI`, VMDK, VHD, HDD)"
     - 수정가능: The limit of the image file size can be changed later -> Section 8.23. "VBoxManage modifymedium"
6. [3.6.] VM Storage Settings : IDE controller or SATA controller
   - IDE controller:  `ubuntu-16.04.2-server-amd64.iso`
7. [3.8.] Network settings 
   - `ch6.7. Host-only networking`
   - `ch6.3. Network Address Translation(NAT)`
   - `어댑터2 -> 네트워크 어댑터 사용하기 -> 호스트전용어댑터 -> 무작위 모드: 모두 허용`
8. Guest Additions 
   - After the guest OS installation, designed to be installed inside a virtual machine 
   - `Shared folders` + Mouse pointer + ...


# Host-only networking
 - Host-only networking is `particularly useful` for preconfigured virtual appliances, where `multiple virtual machines are shipped together and designed to cooperate.`  For example, one virtual machine may contain a `web server` and a second one a `database`, and since they are intended to talk to each other, the appliance can instruct VirtualBox to set up a host-only network for the two. A second (bridged) network would then connect the web server to the outside world to serve data to, but `the outside world cannot connect to the database.`



