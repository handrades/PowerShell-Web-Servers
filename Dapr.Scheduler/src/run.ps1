Param(
    [int]$port = (Get-ChildItem env:/HTTP_PORT).value
)

Import-Module Pode

Start-PodeServer {

    Add-PodeEndpoint -Address * -Port ($port ? $port : 3000) -Protocol Http

    New-PodeLoggingMethod -Terminal | Enable-PodeErrorLogging -Levels Error, Warning, Informational
    New-PodeLoggingMethod -Terminal | Enable-PodeRequestLogging

    Add-PodeRoute -Method Post -Path '/schedule' -ScriptBlock {
        $body = [PSCustomObject]@{
            Name      = 'sched'
            TimeStamp = Get-Date
        }
        Write-PodeHost -Object $body
    }

} -DisableTermination