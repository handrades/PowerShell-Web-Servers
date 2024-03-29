Param(
    [int]$port = $env:HTTP_PORT ? $env:HTTP_PORT : 8080
)

Import-Module Pode

Start-PodeServer {

    Add-PodeEndpoint -Address * -Port $port -Protocol Https -SelfSigned

    New-PodeLoggingMethod -Terminal | Enable-PodeErrorLogging -Levels Error,Warning,Informational
    New-PodeLoggingMethod -Terminal | Enable-PodeRequestLogging

    Add-PodeRoute -Method Get -Path '/' -ScriptBlock {
        Write-PodeJsonResponse -StatusCode 200 -Value @{Ready = $True}
    }

    Add-PodeRoute -Method Get -Path '/employee' -ScriptBlock {
        $Employees = Get-Content ./database/employees.json -Raw | ConvertFrom-Json
        Write-PodeJsonResponse -StatusCode 200 -Value $Employees.Employee
    }

    Add-PodeRoute -Method Get -Path '/employee/:id' -ScriptBlock {
        $Employee = ((Get-Content ./database/employees.json -Raw | ConvertFrom-Json).Employee).Where{
                        $_.Id -eq $WebEvent.Parameters['id']
                    }
        Write-PodeJsonResponse -StatusCode 200 -Value $Employee
    }

}
