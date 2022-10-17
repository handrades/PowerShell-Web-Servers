# Build container and Run

Initialize dapr

```PowerShell
cd Dapr.service2service
dapr init
```

Run dapr service order

```PowerShell
dapr run --app-id 'orderprocessing' --app-port 6001 --dapr-http-port 3601 --dapr-grpc-port 60001 -- pwsh .\src\orderprocess_service\run.ps1
```

Run dapr service process

```PowerShell
dapr run --app-id 'checkout' --app-port 6002 --dapr-http-port 3602 --dapr-grpc-port 60002 -- pwsh .\src\checkout_service\run.ps1
```

Send Get request to service
```PowerShell
Invoke-RestMethod -Method Get -Uri 'http://localhost:6002/checkout/1'
Invoke-RestMethod -Method Get -Uri 'http://localhost:6002/checkout/2'
Invoke-RestMethod -Method Get -Uri 'http://localhost:6002/checkout/3'
```

Uninstall dapr

```PowerShell
dapr uninstall
```