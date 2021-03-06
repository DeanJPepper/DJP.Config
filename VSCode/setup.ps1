param (
    [Parameter(Mandatory = $false)][string]$option
)
Import-Module -Name "$PSScriptRoot\..\Modules\deploy\deploy.psm1"

$directoryDeploy = "$HOME\AppData\Roaming\Code\User"
$files = ("keybindings.json", "settings.json")

if ($option -Eq "remove") {jghjgjhkljklj
    $files | ForEach-Object {
        Unpublish-File $_ $directoryDeploy
    }
} else {
    $files | ForEach-Object {
        Publish-File $_ $PSScriptRoot $directoryDeploy
    }
}

Remove-Module -Name "deploy"
