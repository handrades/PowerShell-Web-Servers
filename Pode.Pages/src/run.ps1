Param(
    [int]$port = $env:HTTP_PORT ? $env:HTTP_PORT : 8080
)

Import-Module Pode
Import-Module Pode.Web

Start-PodeServer {

    Add-PodeEndpoint -Address * -Port $port -Protocol Https -SelfSigned

    New-PodeLoggingMethod -Terminal | Enable-PodeErrorLogging -Levels Error,Warning,Informational
    New-PodeLoggingMethod -Terminal | Enable-PodeRequestLogging

    Use-PodeWebTemplates -Title 'Example' -Theme Dark

    $navDiv = New-PodeWebNavDivider
    $navPode = New-PodeWebNavLink -Name 'Pode' -Url 'https://badgerati.github.io/Pode' -icon 'help-circle' -NewTab
    $navPodeWeb = New-PodeWebNavLink -Name 'PodeWeb' -Url 'https://badgerati.github.io/Pode.Web' -icon 'help-circle' -NewTab
    $navYT = New-PodeWebNavLink -Name 'Youtube' -Url 'https://www.youtube.com/c/KamilPro' -icon 'youtube' -NewTab
    $navGH = New-PodeWebNavLink -Name 'Github' -Url 'https://github.com/kprocyszyn/About-PowerShell' -icon 'github' -NewTab

    Set-PodeWebNavDefault -Items $navPode, $navDiv, $navPodeWeb, $navDiv, $navYT, $navDiv, $navGH

    Add-PodeWebPage -Name 'Files' -Icon 'Settings' -ScriptBlock {
        New-PodeWebContainer -Content @(
            New-PodeWebTable -Name 'Files' -DataColumn "Name" -SimpleFilter -ScriptBlock {
                foreach ($file in (Get-ChildItem)) {
                    [ordered]@{
                        Name          = $file.Name
                        LastWriteTime = "$($file.LastWriteTime)"
                        Mode          = "$($file.Mode)"
                        Actions       = @(
                            New-PodeWebButton -Name 'Stop' -Icon 'Stop-Circle' -IconOnly -ScriptBlock {
                                # Stop-Service -Name ($WebEvent.Data.Value) -Force | Out-Null
                                Show-PodeWebToast -Message "$($WebEvent.Data.Value)"
                                Sync-PodeWebTable -Id $ElementData.Parent.ID
                            }
                            New-PodeWebButton -Name 'Start' -Icon 'Play-Circle' -IconOnly -ScriptBlock {
                                # Start-Service -Name ($WebEvent.Data.Value) #| Out-Null
                                Show-PodeWebToast -Message "$($WebEvent.Data.Value)"
                                Sync-PodeWebTable -Id $ElementData.Parent.ID
                            }
                        )
                    }
                }
            }
        )
    }

    Add-PodeWebPage -Name 'Form' -ScriptBlock {
        New-PodeWebCard - -Content @(
            New-PodeWebForm -Name 'Example' -ScriptBlock {
                $WebEvent.Data | Out-Default
            } -Content @(
                New-PodeWebTextbox -Name 'Name' -AutoComplete {
                    return @('billy', 'bobby', 'alice', 'john', 'sarah', 'matt', 'zack', 'henry')
                }
                New-PodeWebTextbox -Name 'Password' -Type Password -PrependIcon Lock
                New-PodeWebTextbox -Name 'Date' -Type Date
                New-PodeWebTextbox -Name 'Time' -Type Time
                New-PodeWebDateTime -Name 'DateTime' -NoLabels
                New-PodeWebCredential -Name 'Credentials' -NoLabels
                New-PodeWebCheckbox -Name 'Checkboxes' -Options @('Terms', 'Privacy') -AsSwitch
                New-PodeWebRadio -Name 'Radios' -Options @('S', 'M', 'L')
                New-PodeWebSelect -Name 'Role' -Options @('User', 'Admin', 'Operations') -Multiple
                New-PodeWebRange -Name 'Cores' -Value 30 -ShowValue
            )
        )
    }

    Add-PodeWebPage -Name 'Processes' -ScriptBlock {
        New-PodeWebContainer -Content @(
            New-PodeWebChart -Name 'Top Processes' -Type Bar -AutoRefresh -ScriptBlock {
                Get-Process |
                Sort-Object -Property CPU -Descending |
                Select-Object -First 10 |
                ConvertTo-PodeWebChartData -LabelProperty ProcessName -DatasetProperty CPU, Handles
            }
        )
    }

}