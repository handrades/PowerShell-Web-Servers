Param(
    [int]$port = (Get-ChildItem env:/HTTP_PORT).value
)

Import-Module Pode

Start-PodeServer {

    Add-PodeEndpoint -Address * -Port ($port ? $port : 6002) -Protocol Http

    New-PodeLoggingMethod -Terminal | Enable-PodeErrorLogging -Levels Error,Warning,Informational
    New-PodeLoggingMethod -Terminal | Enable-PodeRequestLogging

    Add-PodeRoute -Method Get -Path '/checkout/:id' -ScriptBlock {
        
        $orderId = ($WebEvent.Parameters.Id)
        $response = Invoke-RestMethod -Method Get -Uri "http://localhost:3601/v1.0/invoke/orderprocessing/method/orderprocessing/$($orderId)"
        Write-PodeHost -Object $response
        Write-PodeJsonResponse -Value $response
    }

} -DisableTermination