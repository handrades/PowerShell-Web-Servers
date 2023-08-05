Param(
    [int]$port = $env:HTTP_PORT
)

Import-Module Pode

Start-PodeServer {

    Add-PodeEndpoint -Address * -Port ($port ? $port : 3000) -Protocol Http

    New-PodeLoggingMethod -Terminal | Enable-PodeErrorLogging -Levels Error, Warning, Informational
    New-PodeLoggingMethod -Terminal | Enable-PodeRequestLogging

    Add-PodeRoute -Method Post -Path '/servicebus' -ScriptBlock {
        $body = [PSCustomObject]@{
            TimeStamp = Get-Date
            Data = $Webevent.Request.Body
        }
        Write-PodeHost -Object $body
    }

} -DisableTermination