Param(
    [int]$port = $env:HTTP_PORT
)

Import-Module Pode

Start-PodeServer {

    Add-PodeEndpoint -Address * -Port ($port ? $port : 8080) -Protocol Https -SelfSigned

    New-PodeLoggingMethod -Terminal | Enable-PodeErrorLogging -Levels Error,Warning,Informational
    New-PodeLoggingMethod -Terminal | Enable-PodeRequestLogging

    Add-PodeRoute -Method Get -Path '/employee' -ScriptBlock {
        $Employees = Get-Content -Path ./database/employees.json -RAW | ConvertFrom-Json
        Write-PodeJsonResponse -StatusCode 200 -Value $Employees.Employee
    }

    Add-PodeRoute -Method Post -Path '/employee' -ScriptBlock {
        $Data = $WebEvent.Request.Body | ConvertFrom-Json
        $Employees = Get-Content -Path ./database/employees.json | ConvertFrom-Json
        $Employees.Employee += $Data
        $Employees | ConvertTo-Json | Out-File ./database/employees.json -Force
        Write-PodeJsonResponse -StatusCode 200 -Value $Employees.Employee
    }

}