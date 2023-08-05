Param(
    [int]$port = $env:HTTP_PORT
)

Import-Module Pode

Start-PodeServer {

    Add-PodeEndpoint -Address * -Port ($port ? $port : 8080) -Protocol Https -SelfSigned

    New-PodeLoggingMethod -Terminal | Enable-PodeErrorLogging -Levels Error,Warning,Informational
    New-PodeLoggingMethod -Terminal | Enable-PodeRequestLogging

    Add-PodeSchedule -Name EveryMin -Cron '*/1 * * * *' -ScriptBlock {
        Write-Host "Forever every minute - $(Get-Date)"
    }

    Add-PodeSchedule -Name twice -Cron '*/1 * * * *' -Limit 2 -ScriptBlock {
        Write-Host "Run every minute only 2 times - $(Get-Date)"
    }

    $start = [DateTime]::Now.AddSeconds(15)
    Add-PodeSchedule -Name StartAT -Cron '*/1 * * * *' -StartTime $start -ScriptBlock {
        Write-Host "Delay start 15 seconds run every minute afterwards - $(Get-Date)"
    }

    $end = [DateTime]::Now.AddSeconds(181)
    Add-PodeSchedule -Name EndAt -Cron '*/1 * * * *' -EndTime $end -ScriptBlock {
        Write-Host "Define end in 181 seconds, run every minute - $(Get-Date)"
    }

}