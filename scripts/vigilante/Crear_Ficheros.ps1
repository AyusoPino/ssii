#  Crear_Ficheros.ps1
#  Genera 32 ficheros Dato_X.txt en C:\Compartido
#  UT3 - I.E.S. Castelar

# 1. Crear la carpeta si no existe
$carpeta = "C:\Compartido"

if (-not (Test-Path $carpeta)) {
    New-Item -ItemType Directory -Path $carpeta | Out-Null
    Write-Host "Carpeta '$carpeta' creada."
} else {
    Write-Host "La carpeta '$carpeta' ya existia."
}

# 2. Bucle para generar los 32 ficheros
1..32 | ForEach-Object {
    $nombre    = "Dato_$_.txt"
    $ruta      = "$carpeta\$nombre"
    $fecha     = Get-Date -Format "dd/MM/yyyy HH:mm:ss"
    $contenido = "Fichero numero $_ - Creado el $fecha"

    Set-Content -Path $ruta -Value $contenido -Encoding UTF8
    Write-Host "Creado -> $ruta"
}

Write-Host "`nListo! 32 ficheros generados en $carpeta"
