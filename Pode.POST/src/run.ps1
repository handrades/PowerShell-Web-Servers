Param(
    [int]$port = (Get-ChildItem env:/HTTP_PORT).value
)

Import-Module Pode
Import-Module ./helpers.ps1

Start-PodeServer {

    Add-PodeEndpoint -Address * -Port ($port ? $port : 8080) -Protocol Https -SelfSigned

    New-PodeLoggingMethod -Terminal | Enable-PodeErrorLogging -Levels Error,Warning,Informational

    Add-PodeRoute -Method Post -Path '/employee' -ScriptBlock {
        Write-Host "$(Write-Request -WEvent $WebEvent | Format-List | Out-String)"
        $Employees = Get-Content ./database/employees.json -Raw
        Write-PodeJsonResponse -StatusCode 200 -Value $Employees
    }

}
