function set-Theme {
  oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/jandedobbeleer.omp.json" | Invoke-Expression;
}

function set-Theme2 {
  oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/clean-detailed.omp.json" | Invoke-Expression;
}


# 引入 posh-git
Import-Module posh-git

# 引入 oh-my-posh
# Import-Module oh-my-posh

# 引入 ps-read-line
Import-Module PSReadLine


Set-PSReadLineOption -PredictionSource History

Set-PSReadLineOption -HistorySearchCursorMovesToEnd

Set-PSReadLineKeyHandler -Key "Tab" -Function MenuComplete

Set-PSReadlineKeyHandler -Key "Ctrl+d" -Function ViExit

Set-PSReadLineKeyHandler -Key "Ctrl+z" -Function Undo

Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward

Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward


$decide = Get-Random -Maximum 10
if($decide -as [int] -gt 5) {
  set-Theme2;
} else {
  set-Theme;
}