Import-Module ZLocation
New-Alias -Name "j" Invoke-ZLocation
New-Alias -Name "subl" -Value "C:\Program Files\Sublime Text\subl.exe"
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadlineKeyHandler -Chord Tab -Function MenuComplete
Import-Module git-aliases -DisableNameChecking
Import-Module Pscx
