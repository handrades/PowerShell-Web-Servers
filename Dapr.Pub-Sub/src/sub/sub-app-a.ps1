Param(
    [int]$port = $env:HTTP_PORT ? $env:HTTP_PORT : 3000
)

Import-Module Pode

Start-PodeServer {

    Add-PodeEndpoint -Address * -Port $port -Protocol Http

    New-PodeLoggingMethod -Terminal | Enable-PodeErrorLogging -Levels Error,Warning,Informational
    New-PodeLoggingMethod -Terminal | Enable-PodeRequestLogging

    Add-PodeRoute -Method Post -Path '/process' -ScriptBlock {
        Write-PodeHost -Object ($WebEvent.Request.Body | ConvertFrom-Json).Data
    }

} -DisableTermination