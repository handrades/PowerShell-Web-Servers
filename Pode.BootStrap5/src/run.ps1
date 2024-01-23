Param(
    [int]$port = $env:HTTP_PORT ? $env:HTTP_PORT : 3000
)

Import-Module Pode

Start-PodeServer {

    Add-PodeEndpoint -Address * -Port $port -Protocol Https -SelfSigned

    New-PodeLoggingMethod -Terminal | Enable-PodeErrorLogging -Levels Error,Warning,Informational
    New-PodeLoggingMethod -Terminal | Enable-PodeRequestLogging

    Set-PodeViewEngine -Type PSHTML -Extension PS1 -ScriptBlock {
        param($path)

        return (. $path)
    }

    Add-PodeRoute -Method Get -Path '/' -ScriptBlock {
        Write-PodeViewResponse -Path '.\layout\index.ps1'
    }

    Add-PodeRoute -Method Get -Path '/container' -ScriptBlock {
        Write-PodeViewResponse -Path '.\layout\container.ps1'
    }
    
    Add-PodeRoute -Method Get -Path '/grid' -ScriptBlock {
        Write-PodeViewResponse -Path '.\layout\grid.ps1'
    }

    Add-PodeRoute -Method Get -Path '/columns' -ScriptBlock {
        Write-PodeViewResponse -Path '.\layout\columns.ps1'
    }

    Add-PodeRoute -Method Get -Path '/gutters' -ScriptBlock {
        Write-PodeViewResponse -Path '.\layout\gutters.ps1'
    }

    Add-PodeRoute -Method Get -Path '/buttons' -ScriptBlock {
        Write-PodeViewResponse -Path '.\components\buttons.ps1'
    }

    Add-PodeRoute -Method Get -Path '/cards' -ScriptBlock {
        Write-PodeViewResponse -Path '.\components\cards.ps1'
    }

    Add-PodeRoute -Method Get -Path '/typography' -ScriptBlock {
        Write-PodeViewResponse -Path '.\content\typography.ps1'
    }

    Add-PodeRoute -Method Get -Path '/images' -ScriptBlock {
        Write-PodeViewResponse -Path '.\content\images.ps1'
    }

    Add-PodeRoute -Method Get -Path '/spacing' -ScriptBlock {
        Write-PodeViewResponse -Path '.\utilities\spacing.ps1'
    }

    Add-PodeRoute -Method Get -Path '/borders' -ScriptBlock {
        Write-PodeViewResponse -Path '.\utilities\borders.ps1'
    }

    Add-PodeRoute -Method Get -Path '/flex' -ScriptBlock {
        Write-PodeViewResponse -Path '.\utilities\flex.ps1'
    }

    Add-PodeRoute -Method Get -Path '/tables' -ScriptBlock {
        Write-PodeViewResponse -Path '.\content\tables.ps1'
    }

    Add-PodeRoute -Method Get -Path '/alerts' -ScriptBlock {
        Write-PodeViewResponse -Path '.\components\alerts.ps1'
    }

    Add-PodeRoute -Method Get -Path '/toasts' -ScriptBlock {
        Write-PodeViewResponse -Path '.\components\toasts.ps1'
    }

    Add-PodeRoute -Method Get -Path '/navbar' -ScriptBlock {
        Write-PodeViewResponse -Path '.\components\navbar.ps1'
    }

    Add-PodeRoute -Method Get -Path '/navtabs' -ScriptBlock {
        Write-PodeViewResponse -Path '.\components\navtabs.ps1'
    }

    Add-PodeRoute -Method Get -Path '/forms' -ScriptBlock {
        Write-PodeViewResponse -Path '.\forms\forms.ps1'
    }

}