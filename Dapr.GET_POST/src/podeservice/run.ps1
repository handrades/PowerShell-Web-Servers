Param(
    [int]$port = (Get-ChildItem env:/HTTP_PORT).value
)

Import-Module Pode

Start-PodeServer {

    Add-PodeEndpoint -Address * -Port ($port ? $port : 3000) -Protocol Http

    New-PodeLoggingMethod -Terminal | Enable-PodeErrorLogging -Levels Error,Warning,Informational
    New-PodeLoggingMethod -Terminal | Enable-PodeRequestLogging

    #Region GET
        Add-PodeRoute -Method Get -Path '/order' -ScriptBlock {

            $orderCollection = Invoke-RestMethod -Uri 'http://localhost:3500/v1.0/state/statestore/order' -Method Get
            Write-PodeJsonResponse -Value $orderCollection

        }
    #EndRegion

    #Region POST
        Add-PodeRoute -Method Post -Path '/neworder' -ScriptBlock {
            
            $data = ($WebEvent.Request.Body | ConvertFrom-Json).data
            $State = @(
                [ordered]@{
                    key   = 'order'
                    value = $data
                }
            )
            $Body = ConvertTo-Json -InputObject $State -Compress

            Invoke-RestMethod -Uri 'http://localhost:3500/v1.0/state/statestore' -Method Post -ContentType 'application/json' -Body $Body
            Write-PodeHost -Object $Body

        }
    #EndRegion
} -DisableTermination