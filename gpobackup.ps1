$location = "C:\_install\Backup\GPOBackup\"
$allgpos = Get-GPO -All | Select-Object -ExpandProperty DisplayName
foreach ($g in $allgpos) { 
    Get-GPOReport -Name $g -ReportType HTML -Path $location$g.html 
    }
