# Build container and Run

Dependencies:
You'll need to create a service bus in Azure and configure right parameters in servicebus.yaml file.

Initialize dapr

```PowerShell
cd Dapr.Pub-Sub
dapr init
```

Run dapr azure servicebus service

```PowerShell
dapr run --app-id 'servicebus' --app-port 3000 -d .\components\ -- pwsh .\src\run.ps1
```

Uninstall dapr

```PowerShell
dapr uninstall
```