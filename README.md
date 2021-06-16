Turns the internal WSL network into an external "Bridged" network.  

You will need to adjust for your IP/router settings.  Mine are 192.168.1.x
I have assigned a static address in my router for WSL2.

I am also using Pengwin so you may need to adjust accordingly for your WSL2 OS

1) As Root copy start-bridge.sh into /etc/profile.d
2) As Root copy start-WSLBridge into /usr/bin
3) Edit start-WSLBridge to match your desktop settings (i.e. Windows Username) and Network Settings
4) Copy BRIDGE-MODE.bat onto your windows desktop 
5) Edit BRIDGE-MODE.bat with your desktop settings (i.e. Windows Username)
6) Copy tweaknet.ps1 to your windows desktop
7) Edit tweaknet.ps1 to match the name of your ethernet Adapter

When you start a wsl2 session for the first time it will ask you if you want to start bridge-dode.
If you say 'y' a PS widow will open and convert the WSL network.  Routing and resolv.conf will be updated.

This should work until the system is rebooted.  For issues check /etc/resolv.conf file for incorrect entries (i.e. 172.x.x.x)