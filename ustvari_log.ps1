$Ura = $(get-date -f HH:mm:ss)
$Datum = $(get-date -f dd.MM.yyyy)
$pot = "C:\$datum.log"
Get-WmiObject -Class Win32_Product | Select-Object -Property Name | Sort-Object Name >> "$pot"
Get-CimInstance Win32_StartupCommand | Select-Object Name, command, Location, User | Format-List >> "$pot"
while(1) {
    get-process | where-object {$_.mainwindowhandle -ne 0} | select-object name, mainwindowtitle | Format-Table @{Name='Datum';Expression={$Datum}}, @{Name='Ura';Expression={$Ura}}, @{Expression={$_.name};Label="Ime Programa"}, @{Expression={$_.mainwindowtitle};Label="Trenutno Aktivno Okno"} >> "$pot"
    start-sleep -seconds 600
    }