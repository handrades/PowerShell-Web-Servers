$Body = [PSCustomObject]@{
    Data = [PSCustomObject][ordered]@{
        orderId = 15
        itemName = 'Pen'
        city = 'Monterrey'
        timeStamp = (Get-Date).DateTime
    }
} | ConvertTo-Json

Invoke-RestMethod -Method Post -Uri 'http://localhost:3500/v1.0/invoke/podeservice/method/neworder' -ContentType 'application/json' -Body $Body
Invoke-RestMethod -Method Get -Uri 'http://localhost:3500/v1.0/invoke/podeservice/method/order'
