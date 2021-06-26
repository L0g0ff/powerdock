Import-Module -Name PSReadline, posh-git

# Bash-like TAB completion
Set-PSReadlineKeyHandler -Key Tab -Function Complete
