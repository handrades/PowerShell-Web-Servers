# Build container and Run

Initialize dapr

```PowerShell
cd Dapr.GET_POST
dapr init
```

Run dapr server app

```PowerShell
dapr run --app-id podeservice --app-port 3000 --dapr-http-port 3500 pwsh .\src\podeservice\run.ps1
```

Run dapr client requests

```PowerShell
dapr run --app-id podeclient pwsh .\src\client\run.ps1
```

Invoke Post/Get from your own computer, this is if you don't want to bring up dapr client

```PowerShell
$Body = [PSCustomObject]@{
    Data = [PSCustomObject][ordered]@{
        orderId = 16
        itemName = 'Pencil'
        city = 'Guadalajara'
        timeStamp = (Get-Date).DateTime
    }
} | ConvertTo-Json

Invoke-RestMethod -Method Post -Uri 'http://localhost:3500/v1.0/invoke/podeservice/method/neworder' -ContentType 'application/json' -Body $Body
Invoke-RestMethod -Method Get -Uri 'http://localhost:3500/v1.0/invoke/podeservice/method/order'
```


Uninstall dapr

```PowerShell
dapr uninstall
```