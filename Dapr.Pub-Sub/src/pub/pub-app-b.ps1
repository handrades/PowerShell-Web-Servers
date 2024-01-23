Param(
    [int]$port = $env:HTTP_PORT ? $env:HTTP_PORT : 3002
)

Import-Module Pode

Start-PodeServer {

    Add-PodeEndpoint -Address * -Port $port -Protocol Http

    New-PodeLoggingMethod -Terminal | Enable-PodeErrorLogging -Levels Error,Warning,Informational
    New-PodeLoggingMethod -Terminal | Enable-PodeRequestLogging

    Add-PodeRoute -Method Post -Path '/order' -ScriptBlock {
        
        $order = [PSCustomObject]@{
            Name = 'pencil'
        } | ConvertTo-Json
        
        $data = [PSCustomObject]@{
            key = "Client Request - $(Get-Random -Minimum 101 -Maximum 200)"
            value = $order
        } | ConvertTo-Json

        $response = Invoke-RestMethod -Method Post -Uri 'http://localhost:3500/v1.0/publish/pubsub/order' -ContentType 'application/json' -Body $data
        Write-PodeHost -Object $response
    }

} -DisableTermination