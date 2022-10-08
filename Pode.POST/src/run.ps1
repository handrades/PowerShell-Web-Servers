Param(
    [int]$port = (Get-ChildItem env:/HTTP_PORT).value
)

Import-Module Pode
Import-Module ./helpers.ps1

Start-PodeServer {

    Add-PodeEndpoint -Address * -Port ($port ? $port : 8080) -Protocol Https -SelfSigned

    New-PodeLoggingMethod -Terminal | Enable-PodeErrorLogging -Levels Error,Warning,Informational

    Add-PodeRoute -Method Get -Path '/employee' -ScriptBlock {
        Write-Host "$(Write-Request -WEvent $WebEvent | Format-List | Out-String)"
        $Employees = Get-Content -Path ./database/employees.json -RAW | ConvertFrom-Json
        Write-PodeJsonResponse -StatusCode 200 -Value $Employees
    }

    Add-PodeRoute -Method Post -Path '/employee' -ScriptBlock {
        Write-Host "$(Write-Request -WEvent $WebEvent | Format-List | Out-String)"
        $Data = $WebEvent.Request.Body | ConvertFrom-Json
        Write-Host "$($data | Format-List | Out-String)"
        $Employees = Get-Content -Path ./database/employees.json | ConvertFrom-Json
        $Employees.Employee += $Data
        $Employees | ConvertTo-Json | Out-File ./database/employees.json -Force
        Write-PodeJsonResponse -StatusCode 200 -Value $Employees
    }

}
    