$ErrorActionPreference = 'Stop'

if ($PSVersionTable.PSVersion.Major -lt 7) {
    Write-Error "Your powershell version of $($PSVersionTable.PSVersion) is too old. Upgrade to at least 7.0"
    exit 1
}
if ($IsWindows) {
    winget install JanDeDobbeleer.OhMyPosh -s winget
}
elseif ($IsMacOS) {
    brew install jandedobbeleer/oh-my-posh/oh-my-posh
}
elseif ($IsLinux) {
    curl -s https://ohmyposh.dev/install.sh | bash -s
}
else {
    Write-Error "Unsupported OS"
}
oh-my-posh font install Hack
Install-Module ZLocation -Scope CurrentUser -Force
Install-Module git-aliases -Scope CurrentUser -AllowClobber -Force
Install-Module pscx -AllowClobber -Scope CurrentUser -Force
PowerShellGet\Install-Module posh-git -Scope CurrentUser -Force

# This may throw errors because some modules don't have help published. That's ok. 
Update-Help
