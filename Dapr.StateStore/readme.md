# Build container and Run

Initialize dapr

```PowerShell
cd Dapr.StateStore
dapr init
```

Run dapr state store example

```PowerShell
dapr run --app-id foodhut --app-port 3000 --dapr-http-port 3500 --components-path .\components\ -- pwsh .\src\run.ps1
```

On your favorite web browser go to http://localhost:3000/.
Increase the amount by pressing the plus button.
Enter a name in the textbox.
Click the order button.
Copy the KEY value from the JSON output.

To query redis DB run the following from a PowerShell terminal

```PowerShell
$key = '<KEY value>' #for example: OD-705385103-683
Invoke-RestMethod -Uri "http://localhost:3500/v1.0/state/sendtotable/$key"
```

Uninstall dapr

```PowerShell
dapr uninstall
```