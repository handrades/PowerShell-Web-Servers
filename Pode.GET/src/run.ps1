Param(
    [int]$port = (Get-ChildItem env:/HTTP_PORT).value
)

Import-Module Pode
Import-Module ./helpers.ps1

Start-PodeServer {

    Add-PodeEndpoint -Address * -Port ($port ? $port : 8080) -Protocol Https -SelfSigned

    New-PodeLoggingMethod -Terminal | Enable-PodeErrorLogging -Levels Error,Warning,Informational

    Add-PodeRoute -Method Get -Path '/' -ScriptBlock {
        Write-Host "$(Write-Request -WEvent $WebEvent | Format-List | Out-String)"
        Write-PodeJsonResponse -StatusCode 200 -Value @{Ready = $True}
    }

    Add-PodeRoute -Method Get -Path '/employee' -ScriptBlock {
        Write-Host "$(Write-Request -WEvent $WebEvent | Format-List | Out-String)"
        $Employees = Get-Content ./database/employees.json -Raw
        Write-PodeJsonResponse -StatusCode 200 -Value $Employees.Employee
    }

    Add-PodeRoute -Method Get -Path '/employee/:id' -ScriptBlock {
        Write-Host "$(Write-Request -WEvent $WebEvent | Format-List | Out-String)"
        $Employee = ((Get-Content ./database/employees.json -Raw | ConvertFrom-Json).Employee).Where{
                        $_.Id -eq $WebEvent.Parameters['id']
                    }
        Write-PodeJsonResponse -StatusCode 200 -Value $Employee
    }

}
