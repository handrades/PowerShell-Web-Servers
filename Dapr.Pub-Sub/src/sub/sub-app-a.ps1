Param(
    [int]$port = $env:HTTP_PORT
)

Import-Module Pode

Start-PodeServer {

    Add-PodeEndpoint -Address * -Port ($port ? $port : 3000) -Protocol Http

    New-PodeLoggingMethod -Terminal | Enable-PodeErrorLogging -Levels Error,Warning,Informational
    New-PodeLoggingMethod -Terminal | Enable-PodeRequestLogging

    Add-PodeRoute -Method Post -Path '/process' -ScriptBlock {
        Write-PodeHost -Object ($WebEvent.Request.Body | ConvertFrom-Json).Data
    }

} -DisableTermination