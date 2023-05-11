$vmname = "test"

Enter-PSSession -ComputerName $vmname

Get-ChildItem -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\ | Get-ItemProperty | Select-Object DisplayName, DisplayVersion
Get-ChildItem -Path HKLM:\SOFTWARE\Wow6432node\Microsoft\Windows\CurrentVersion\Uninstall | Get-ItemProperty | Select-Object DisplayName, DisplayVersion 

#| Format-List
Get-HotFix

Get-Package | Select Name, Version, ProviderName | Export-Csv c:\windows\temp\packages.csv -NoTypeInformation
