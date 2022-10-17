# Build container and Run

Initialize dapr

```PowerShell
cd Dapr.Pub-Sub
dapr init
```

Run dapr subscriber A

```PowerShell
dapr run --log-level fatal --app-id 'scheduler' --app-port 3000 -d .\components\ -- pwsh .\src\run.ps1
```

Uninstall dapr

```PowerShell
dapr uninstall
```