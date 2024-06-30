# powershell-profile
A place to store my Powershell profile so I don't have to reinvent the wheel every time I get a fresh copy of Windows

[Update Powershell to at least 7.0](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.4#install-powershell-using-winget-recommended)
```
winget install Microsoft.Powershell
```

Make sure [Windows Terminal](https://apps.microsoft.com/detail/9n0dx20hk701?rtc=1&hl=en-us&gl=US) runs `pwsh.exe` in its profile (which is `PATH`'d to 7.0) instead of the default `%windir%\System32\WindowsPowerShell\v1.0\powershell.exe` which runs 5.0
  * Run `$PSVersionTable` to check the version

Clone this repo into the Powershell directory: 
```powershell
git clone "https://github.com/sciencectn/powershell-profile.git" "$($profile.CurrentUserCurrentHost)\..\"
```

Then run `Setup.ps1` which will install the following:

* [oh-my-posh](https://ohmyposh.dev/docs/installation/windows) and [Hack Nerd Font](https://www.nerdfonts.com/font-downloads). 
* [Zlocation](https://github.com/vors/ZLocation). It's like autojump. 
* [Powershell Git Aliases](https://github.com/gluons/powershell-git-aliases). This imitates the legendary Z shell plugin. ggl = git pull, ggp = push, etc
* [PSCX](https://github.com/Pscx/Pscx). PSCX replaces the pager with `less` which is way better than `more` (you think I wouldn't want to scroll backward?)

[Then configure Windows Terminal to use Hack Nerd Font.](https://ohmyposh.dev/docs/installation/fonts#configuration)

The theme is derived from [powerlevel10k_lean](https://ohmyposh.dev/docs/themes#powerlevel10k_lean). 
