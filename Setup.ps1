winget install JanDeDobbeleer.OhMyPosh -s winget
oh-my-posh font install Hack --user
Install-Module ZLocation -Scope CurrentUser
Install-Module git-aliases -Scope CurrentUser -AllowClobber
Install-Module pscx -AllowClobber -Scope CurrentUser

# This may throw errors because some modules don't have help published. That's ok. 
Update-Help
