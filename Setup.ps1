if ($PSVersionTable.PSVersion.Major -lt 7) {
    Write-Error "Your powershell version of $($PSVersionTable.PSVersion) is too old. Upgrade to at least 7.0"
    exit 1
}
winget install JanDeDobbeleer.OhMyPosh -s winget
oh-my-posh font install Hack
Install-Module ZLocation -Scope CurrentUser
Install-Module git-aliases -Scope CurrentUser -AllowClobber
Install-Module pscx -AllowClobber -Scope CurrentUser

# This may throw errors because some modules don't have help published. That's ok. 
Update-Help
