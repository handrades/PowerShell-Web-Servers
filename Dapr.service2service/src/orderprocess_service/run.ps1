Param(
    [int]$port = $env:HTTP_PORT
)

Import-Module Pode

Start-PodeServer {

    Add-PodeEndpoint -Address * -Port ($port ? $port : 6001) -Protocol Http

    New-PodeLoggingMethod -Terminal | Enable-PodeErrorLogging -Levels Error,Warning,Informational
    New-PodeLoggingMethod -Terminal | Enable-PodeRequestLogging

    Add-PodeRoute -Method Get -Path '/orderprocessing/:id' -ScriptBlock {

        $orderId = ($WebEvent.Parameters.Id)
        switch ($orderId) {
            1 { $body = [PSCustomObject]@{
                    Name = 'pen'
                    id = 1
                }
            }
            2 { $body = [PSCustomObject]@{
                    Name = 'pencil'
                    id = 2
                }
            }
            Default {
                $body = [PSCustomObject]@{
                    Message = 'no order id found...'
                }
            }
        }

        Write-PodeJsonResponse -Value $body

    }

} -DisableTermination