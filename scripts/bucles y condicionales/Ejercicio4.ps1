function Saludar {
    Write-Host "Hola! Bienvenido al menu."
}

function Mostrar-Fecha {
    Write-Host "Fecha actual: $(Get-Date -Format 'dd/MM/yyyy HH:mm:ss')"
}

function Salir {
    Write-Host "Saliendo del programa. ¡Hasta luego!"
    exit
}

    Write-Host "Seleccione una opcion:"
    Write-Host "1. Saludar"
    Write-Host "2. Mostrar fecha actual"
    Write-Host "3. Salir"
    $opcion = Read-Host "Ingrese el numero de opcion"

    switch ($opcion) {
        '1' { Saludar }
        '2' { Mostrar-Fecha }
        '3' { Salir }
        default { Write-Host "Opcion no válida. Intente de nuevo.`n" }
    }

    Start-Sleep 4
    Clear-Host

