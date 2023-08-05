Param(
    [int]$port = $env:HTTP_PORT
)

Import-Module Pode

Start-PodeServer {

    Add-PodeEndpoint -Address * -Port ($port ? $port : 3000) -Protocol Http

    New-PodeLoggingMethod -Terminal | Enable-PodeErrorLogging -Levels Error, Warning, Informational
    New-PodeLoggingMethod -Terminal | Enable-PodeRequestLogging

    Set-PodeViewEngine -Type PSHTML -Extension PS1 -ScriptBlock {
        param(
            $path,
            $data
        )

        return (. $path $data)
    }

    Add-PodeRoute -Method Get -Path '/' -ScriptBlock {
        Write-PodeViewResponse -Path 'index.ps1'
    }

    Add-PodeRoute -Method Post -Path '/sendtotable' -ScriptBlock {
        if($WebEvent.Data.total_amount -gt 0){
            $orderId = "OD-$(Get-Random -Minimum 100)-$([datetime]::UtcNow.Millisecond)"
            $key = $orderId
            $data = [PSCustomObject]@{
                full_name = $WebEvent.Data.full_name
                total_amount = $WebEvent.Data.total_amount
                card_number = $WebEvent.Data.card_number
            }
            $state = @(
                [ordered]@{
                    key = $key
                    value = $data
                }
            )
            $body = ConvertTo-Json -InputObject $state -Compress

            Write-PodeHost -Object $body
            Invoke-RestMethod -Method Post -Uri 'http://localhost:3500/v1.0/state/sendtotable' -ContentType 'application/json' -Body $body
            Write-PodeJsonResponse -Value $body
            # Write-PodeViewResponse -Path 'success.ps1'
        } else {
            Write-PodeJsonResponse -Value 'Order value is 0'
        }
    }

} -DisableTermination