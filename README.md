# powershell-profile
A place to store my Powershell profile so I don't have to reinvent the wheel every time I get a fresh copy of Windows

[Update Powershell to at least 7.0](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.4#install-powershell-using-winget-recommended)
```
winget install Microsoft.Powershell
```
Then: 

* Make sure [Windows Terminal](https://apps.microsoft.com/detail/9n0dx20hk701?rtc=1&hl=en-us&gl=US) runs `pwsh.exe` in its profile (which is `PATH`'d to 7.0) instead of the default `%windir%\System32\WindowsPowerShell\v1.0\powershell.exe` which runs 5.0
  * Run `$PSVersionTable` to check the version
* Install [Zlocation](https://github.com/vors/ZLocation): `Install-Module ZLocation -Scope CurrentUser`
* Install [Powershell Git Aliases](https://github.com/gluons/powershell-git-aliases): `Install-Module git-aliases -Scope CurrentUser -AllowClobber`
* Update the help: `Update-Help`
* Install [PSCX](https://github.com/Pscx/Pscx), which replaces the pager with `less` which is way better: `Install-Module pscx -AllowClobber`
* Paste the contents of [profile.ps1](profile.ps1) into `$HOME\Documents\PowerShell\Profile.ps1`. [Profile location docs](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_profiles?view=powershell-7.4#profile-types-and-locations)


