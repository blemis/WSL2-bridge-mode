
#change White to your Network Adapter Name

write-host "Disconnected Adapter Binding..."
Disable-NetAdapterBinding White -ComponentID vms_pp;
write-host "Activating WSL network Bridge Mode..."
#bash.exe -c "sudo /usr/bin/start-WSLBridge";
write-host "Enabling NetAdapter..."
Enable-NetAdapter "White";
write-host "Setting WSL VMSwitch to NetAdapter..."
set-vmswitch -name wsl -NetAdapterName White ;
Start-Sleep -s 2 ;
write-host "External WSL switch enabled..."