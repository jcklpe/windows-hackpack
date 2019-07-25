Write-Output "Creating restore point..."
Enable-ComputerRestore


Write-Output "Enabling dev and WSL..."
#--- Ubuntu ---
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

