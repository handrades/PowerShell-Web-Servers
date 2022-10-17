# Build container and Run

Initialize dapr

```PowerShell
cd Dapr.GET_POST
dapr init
```

Run dapr subscriber A

```PowerShell
dapr run --app-id 'sub-app-a' --app-port 3000 --dapr-http-port 3500 -d .\components\ -- pwsh .\src\sub\sub-app-a.ps1
```

Run dapr consumer A

```PowerShell
dapr run --app-id 'pub-app-a' --app-port 3001 -d .\components\ -- pwsh .\src\pub\pub-app-a.ps1
```

Run dapr consumer B

```PowerShell
dapr run --app-id 'pub-app-b' --app-port 3002 -d .\components\ -- pwsh .\src\pub\pub-app-b.ps1
```

Invoke Post from your own computer, to get an order from 3001

```PowerShell

Invoke-RestMethod -Method Post -Uri 'http://localhost:3001/order' -Body $null
```
Invoke Post from your own computer, to get an order from 3002

```PowerShell

Invoke-RestMethod -Method Post -Uri 'http://localhost:3002/order' -Body $null
```

Uninstall dapr

```PowerShell
dapr uninstall
```