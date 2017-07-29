# default KeyBoard layout
1. install
```
 $ sudo apt-get install fcitx-hangul
```
2. System Settings > Language Support 
 - Keyboard input method system: ibus -> `fcitx`

3. Reboot  `$ sudo reboot`

4. 한영 전환 설정
   - ShortCut 
     * AllSettings -> Keyboard -> Shortcuts Tab > Typing
     * Switch to Next source, Switch to Previous source, Compose Key, Alternative Chracters key
       - `Disabled`
     * Composed Key: `Disabled` -> `Right Alt` 
     * Switch to Next source:  `Multikey`
   - 상단 메뉴바 오른쪽 입력기 키보드 표시 `fcitx Icon`:  `Configure Current Input Method`
     * `Keyboard-English(US)`에서 `+`를 눌러 `Hangul`추가 
     * Global Config tab 
       -> Trigger Input Method -> '한영키'를 눌러 MultiKey설정
       -> Extrakey for trigger input method : `Disabled`

# Change Keyboard Layout 
```
 $ sudo dpkg-reconfigure keyboard-configuration
```
     

