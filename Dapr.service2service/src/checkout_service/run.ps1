Param(
    [int]$port = $env:HTTP_PORT ? $env:HTTP_PORT : 6002
)

Import-Module Pode

Start-PodeServer {

    Add-PodeEndpoint -Address * -Port $port -Protocol Http

    New-PodeLoggingMethod -Terminal | Enable-PodeErrorLogging -Levels Error,Warning,Informational
    New-PodeLoggingMethod -Terminal | Enable-PodeRequestLogging

    Add-PodeRoute -Method Get -Path '/checkout/:id' -ScriptBlock {
        
        $orderId = ($WebEvent.Parameters.Id)
        $response = Invoke-RestMethod -Method Get -Uri "http://localhost:3601/v1.0/invoke/orderprocessing/method/orderprocessing/$($orderId)"
        Write-PodeHost -Object $response
        Write-PodeJsonResponse -Value $response
    }

} -DisableTermination