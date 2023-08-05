Param(
    [int]$port = $env:HTTP_PORT
)

Import-Module Pode

Start-PodeServer {

    Add-PodeEndpoint -Address * -Port ($port ? $port : 3001) -Protocol Http

    New-PodeLoggingMethod -Terminal | Enable-PodeErrorLogging -Levels Error,Warning,Informational
    New-PodeLoggingMethod -Terminal | Enable-PodeRequestLogging

    Add-PodeRoute -Method Post -Path '/order' -ScriptBlock {
        
        $order = [PSCustomObject]@{
            Name = 'pen'
        } | ConvertTo-Json
        
        $data = [PSCustomObject]@{
            key = "Client Request - $(Get-Random -Minimum 1 -Maximum 100)"
            value = $order
        } | ConvertTo-Json

        $response = Invoke-RestMethod -Method Post -Uri 'http://localhost:3500/v1.0/publish/pubsub/order' -ContentType 'application/json' -Body $data
        Write-PodeHost -Object $response
    }

} -DisableTermination