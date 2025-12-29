Menu, Tray, Icon, shell32.dll, 174, 1
Menu, Tray, Tip, Hotkey System v1.06 [ahk]
#KeyHistory 500

#Persistent
Menu, Menu1, Add, [!] Computer Management, MenuHandler1
Menu, Menu1, Add, [!] Device Management, MenuHandler2
Menu, Menu1, Add, [!] Disk Management,  MenuHandler3
Menu, Menu1, Add
Menu, Menu1, Add, [!] System Configuration, MenuHandler4
Menu, Menu1, Add, [!] System Information, MenuHandler5
Menu, Menu1, Add, System Properties, MenuHandler6
Menu, Menu1, Add, Task Manager, MenuHandler7
Menu, Menu1, Add
Menu, Menu1, Add, [!] Command Prompt, MenuHandler8
Menu, Menu1, Add, [!] PowerShell, MenuHandler9
Menu, Menu1, Add
Menu, Menu1, Add, Control Panel, MenuHandler10
Menu, Menu1, Add, Settings, MenuHandler11
Menu, Menu1, Add,
Menu, Menu1, Add, Search, MenuHandler12
Menu, Menu1, Add, Run, MenuHandler13
Menu, Menu1, Add
Menu, Submenu1, Add, Log Off, MenuHandler14
Menu, Submenu1, Add, Lock, MenuHandler15
Menu, Menu1, Add, [!] Log Off, :Submenu1
Menu, Submenu2, Add, Restart, MenuHandler16
Menu, Submenu2, Add, Sleep, MenuHandler17
Menu, Submenu2, Add, Hibernate, MenuHandler18
Menu, Submenu2, Add, Shut Down, MenuHandler19
Menu, Menu1, Add, [!] Shut Down, :Submenu2
Menu, Menu1, Add
Menu, Menu1, Add, Ease of Access, MenuHandler20
Menu, Menu1, Add, Mobility Center, MenuHandler21
return

MenuHandler1:
Run compmgmt.msc
return

MenuHandler2:
Run devmgmt.msc
return

MenuHandler3:
Run diskmgmt.msc
return

MenuHandler4:
Run msconfig
return

MenuHandler5:
Run msinfo32
return

MenuHandler6:
Send #{Pause}
return

MenuHandler7:
Send ^+{Esc}
return

MenuHandler8:
Run cmd
return

MenuHandler9:
Run powershell
return

MenuHandler10:
Run control
return

MenuHandler11:
Send #i
return

MenuHandler12:
Send #s
return

MenuHandler13:
Send #r
return

MenuHandler14:
Run logoff
return

MenuHandler15:
Send #l
return

MenuHandler16:
Run shutdown /r
return

MenuHandler17:
Send {Sleep}
return

MenuHandler18:
Run shutdown /h
return

MenuHandler19:
Run shutdown /s
return

MenuHandler20:
Send #u
return

MenuHandler21:
Run mblctr
return

#AppsKey::Menu, Menu1, Show

#F1::Send {Sleep}
#F2::Run ms-settings:network
#F3::Send {Launch_App1}
#F4::Send {Launch_Media}
#F7::Run ms-settings:display
#F8::Send #p
#F9::Send #u
#F10::Send {Volume_Mute}
#F11::Send {Volume_Down}
#F12::Send {Volume_Up}

#+F1::Send {F13}
#+F2::Send {F14}
#+F3::Send {F15}
#+F4::Send {F16}
#+F5::Send {F17}
#+F6::Send {F18}
#+F7::Send {F19}
#+F8::Send {F20}
#+F9::Send {F21}
#+F10::Send {F22}
#+F11::Send {F23}
#+F12::Send {F24}

#Up::Send {Media_Stop}
#Down::Send {Media_Play_Pause}
#Left::Send {Media_Prev}
#Right::Send {Media_Next}

#numpad1::Send {XButton1}
#numpad2::MouseMove, 0, +10, 0, R
#numpad3::Send {XButton2}
#numpad4::MouseMove, -10, 0, 0, R
#numpad5::Send {MButton}
#numpad6::MouseMove, +10, 0, 0, R
#numpad7::Send {LButton}
#numpad8::MouseMove, 0, -10, 0, R
#numpad9::Send {RButton}
#numpadsub::Send {Wheel_Up}
#numpadadd::Send {Wheel_Down}
#numpaddiv::Send {Wheel_Left}
#numpadmult::Send {Wheel_Right}
#numpadenter::Send {Launch_App2}