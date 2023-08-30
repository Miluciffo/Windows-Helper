@echo OFF
title Windows Helper
color 9

echo ---------------------------------
echo App has been loaded, type command "Start" to app getting started.
echo Developer this App - Kocmoc [Discord: Kocmoc#9831] or [Discord Server: https://discord.gg/nnmxgvUjta]
echo ---------------------------------
set /p a=
if "%a%" == "Start" goto :start

:start
cls
echo ---------------------------------
echo Select the category you want to view.
echo [Perfomance] - This category boost your fps and get low ping.
echo [Clean] - This category clears the system folders
echo Soon..
echo ---------------------------------

set /p a=
if "%a%" == "Perfomance" goto :Perfomance
if "%a%" == "Clean" goto :Clean

:Perfomance
cls
echo ---------------------------------
echo In this window, you can select the service that the app will do for you.
echo [Tweaks] - This command do a Tweaks BCD
echo [Devices] - This command will remove unnecessary devices.
echo [Reducer] - This command configures the Latency Reducer.
echo [Windows] - This command activated your Windows.
echo ---------------------------------

set /p a=
if "%a%" == "Windows" goto :windows
if "%a%" == "Reducer" goto :red
if "%a%" == "Devices" goto :device
if "%a%" == "Tweaks" goto :tweak

:Clean
cls
echo ---------------------------------
echo In this window, you can select the service that the app will do for you.
echo [Temp] - This command clean your %temp%.
echo [Cache] - This command disable your Windows Update Cache.
echo [Logs] - This command delete your Log Files.
echo ---------------------------------

set /p a=
if "%a%" == "Temp" goto :temp
if "%a%" == "Cache" goto :cache
if "%a%" == "Logs" goto :log

:tweak
cls
bcdedit /set hypervisorlaunchtype off
bcdedit /set tpmbootentropy ForceDisable
bcdedit /timeout 0
bcdedit /set bootux disabled
bcdedit /set bootmenupolicy standard
bcdedit /set quietboot yes
bcdedit /set {globalsettings} custom:16000067 true
bcdedit /set {globalsettings} custom:16000068 true
cls
echo ---------------------------------
echo Tweaks BCD is a enable. Type [Exit] for exit this program.
echo ---------------------------------

set /p a=
if "%a%" == "Exit" goto :exit

:exit
cls
exit

:device
cls
DevManView.exe /disable "UMBus Root Bus Enumerator" > NUL 2>&1
DevManView.exe /disable "Root Print Queue" > NUL 2>&1
DevManView.exe /disable "NDIS Virtual Network Adapter Enumerator" > NUL 2>&1
DevManView.exe /disable "Microsoft Virtual Drive Enumerator" > NUL 2>&1
DevManView.exe /disable "Microsoft Hyper-V Virtualization Infrastructure Driver" > NUL 2>&1
DevManView.exe /disable "Microsoft GS Wavetable Synth" > NUL 2>&1
DevManView.exe /disable "Microsoft Device Association Root Enumerator" > NUL 2>&1
DevManView.exe /disable "Composite Bus Enumerator" > NUL 2>&1
DevManView.exe /disable "Microsoft UEFI-Compliant System" > NUL 2>&1
DevManView.exe /disable "System board" > NUL 2>&1
DevManView.exe /disable "SM Bus Controller" > NUL 2>&1
DevManView.exe /disable "PCI Encryption/Decryption Controller" > NUL 2>&1
DevManView.exe /disable "Microsoft Windows Management Interface for ACPI" > NUL 2>&1
DevManView.exe /disable "High precision event timer" > NUL 2>&1
DevManView.exe /disable "Base System Device" > NUL 2>&1
DevManView.exe /disable "PCI Data Acquisition and Signal Processing Controller" > NUL 2>&1
DevManView.exe /disable "PCI Simple Communications Controller" > NUL 2>&1
DevManView.exe /disable "PCI Device" > NUL 2>&1
DevManView.exe /disable "Unknown Device" > NUL 2>&1
DevManView.exe /disable "PCI Simple Communications Controller" > NUL 2>&1
DevManView.exe /disable "PCI Memory Controller" > NUL 2>&1
DevManView.exe /disable "PCI standard RAM Controller" > NUL 2>&1
DevManView.exe /disable "ACPI Processor Aggregator" > NUL 2>&1
DevManView.exe /disable "ACPI Wake Alarm" > NUL 2>&1
DevManView.exe /disable "System Speaker" > NUL 2>&1
DevManView.exe /disable "System Timer" > NUL 2>&1
DevManView.exe /disable "WAN Miniport (IKEv2)" > NUL 2>&1
DevManView.exe /disable "WAN Miniport (IP)" > NUL 2>&1
DevManView.exe /disable "WAN Miniport (IPv6)" > NUL 2>&1
DevManView.exe /disable "WAN Miniport (L2TP)" > NUL 2>&1
DevManView.exe /disable "WAN Miniport (Network Monitor)" > NUL 2>&1
DevManView.exe /disable "WAN Miniport (PPPOE)" > NUL 2>&1
DevManView.exe /disable "WAN Miniport (PPTP)" > NUL 2>&1
DevManView.exe /disable "WAN Miniport (SSTP)" > NUL 2>&1
DevManView.exe /disable "Programmable Interrupt Controller" > NUL 2>&1
DevManView.exe /disable "Numeric Data Processor" > NUL 2>&1
DevManView.exe /disable "Microsoft Kernel Debug Network Adapter" > NUL 2>&1
DevManView.exe /disable "HID-compliant consumer control device" > NUL 2>&1
DevManView.exe /disable "Plug and Play Software Device Enumerator" > NUL 2>&1
DevManView.exe /disable "Direct memory access controller" > NUL 2>&1
DevManView.exe /disable "ACPI\PNP0501\0"
cls
echo ---------------------------------
echo Your Unnecessary Devices has been removed. Type [Exit] for exit this program.
echo ---------------------------------

set /p a=
if "%a%" == "Exit" goto :exit

:exit
cls
exit

:red
cls
bcdedit /set allowedinmemorysettings 0 
bcdedit /set useplatformclock No 
bcdedit /set useplatformtick yes 
bcdedit /set x2apicpolicy Enable 
bcdedit /set vsmlaunchtype Off 
bcdedit /set usephysicaldestination No 
bcdedit /set tscsyncpolicy Enhanced 
bcdedit /set debug No 
bcdedit /set isolatedcontext No 
bcdedit /set pae ForceEnable 
bcdedit /set bootmenupolicy Legacy 
bcdedit /set usefirmwarepcisettings No 
bcdedit /set ems No 
bcdedit /set firstmegabytepolicy UseAll 
bcdedit /set configaccesspolicy Default 
bcdedit /set linearaddress57 optin 
bcdedit /set noumex Yes 
bcdedit /set bootems No 
bcdedit /set graphicsmodedisabled No 
bcdedit /set extendedinput Yes 
bcdedit /set highestmode Yes 
bcdedit /set allowedinmemorysettings 0 
bcdedit /set useplatformclock No 
bcdedit /set useplatformtick yes 
bcdedit /set x2apicpolicy Enable 
bcdedit /set vsmlaunchtype Off 
bcdedit /set usephysicaldestination No 
bcdedit /set forcefipscrypto No 
bcdedit /set perfmem 0 
bcdedit /set clustermodeaddressing 1 
bcdedit /set configflags 0 
bcdedit /set uselegacyapicmode No 
bcdedit /set onecpu No 
bcdedit /set halbreakpoint No 
bcdedit /set forcelegacyplatform No 
bcdedit /set sos Yes 
bcdedit /set disabledynamictick Yes 
bcdedit /set disableelamdrivers Yes 
bcdedit /set quietboot Yes 
cls
echo ---------------------------------
echo Your Latency Reducer has been Configured. Type [Exit] for exit this program.
echo ---------------------------------

set /p a=
if "%a%" == "Exit" goto :exit

:exit
cls
exit

:log
cls
del *.log /a /s /q /f
cls
echo Your Apps logs, has been cleared. Type [Exit] for exit this program.

set /p a=
if "%a%" == "Exit" goto :exit

:exit
cls
exit

:cache
cls
net stop wuauserv
net stop UsoSvc
rd /s /q C:\Windows\SoftwareDistribution
md C:\Windows\SoftwareDistribution
cls
echo ---------------------------------
echo Your Windows Update Cache, has been disable. Type [Exit] for exit this program.
echo ---------------------------------

set /p a=
if "%a%" == "Exit" goto :exit

:exit
cls
exit

:temp
cls
del /q/f/s %TEMP%\*
cls
echo ---------------------------------
echo Your %temp% explorer, has been cleared. Type [Exit] for exit this program.
echo ---------------------------------

set /p a=
if "%a%" == "Exit" goto :exit

:exit
cls
exit

:windows
cls
echo ---------------------------------
echo [Proffesional] - This command activated your windows to Proffesional Version.
echo [Corporation] - This command activated your windows to Corporation Version.
echo ---------------------------------


set /p a=
if "%a%" == "Proffesional" goto :pro

:pro
cls
echo Activating your Windows will take a minute. Waiting the end.
slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
timeout 1
slmgr /ato
timeout 1
cls
echo ---------------------------------
echo Your windows, has been activated. Type [Exit] for exit this program.
echo ---------------------------------

set /p a=
if "%a%" == "Exit" goto :exit

:exit
cls
exit

:home
cls
echo Activating your Windows will take a minute. Wait for the end.
slmgr /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
timeout 1
slmgr /ato
timeout 1
cls
echo ---------------------------------
echo Your windows, has been activated. Type [Exit] for exit this program.
echo ---------------------------------

set /p a=
if "%a%" == "Exit" goto :exit

:exit
cls
exit