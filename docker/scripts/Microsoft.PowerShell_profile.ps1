Import-Module -Name PSReadline, posh-git

# Bash-like TAB completion
Set-PSReadlineKeyHandler -Key Tab -Function Complete

# Enable predictions
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
