#  Vigilante.ps1
#  Monitoriza C:\Compartido y genera log al detectar borrado
#  UT3 - I.E.S. Castelar

# 1. Definimos la ruta
$Ruta = "C:\Compartido"

# 2. Creamos el objeto FileSystemWatcher
$fsw = New-Object System.IO.FileSystemWatcher

# 3. Configuracion del watcher
$fsw.Path                  = $Ruta
$fsw.Filter                = "*.txt"
$fsw.IncludeSubdirectories = $false
$fsw.EnableRaisingEvents   = $true

# 4. Suscripcion al evento Deleted
Register-ObjectEvent $fsw Deleted -Action {

    # Detenemos la vigilancia
    $fsw.EnableRaisingEvents = $false

    # Recogemos la informacion del evento
    $archivo      = $Event.SourceEventArgs.Name
    $rutaCompleta = $Event.SourceEventArgs.FullPath
    $timestamp    = Get-Date -Format "dd/MM/yyyy HH:mm:ss"
    $usuarioActivo = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name

    # Generamos el log de auditoria
    $logPath = "C:\Compartido\Auditoria_Eliminacion.log"

    $contenidoLog = "[$timestamp] Usuario: $usuarioActivo - Archivo eliminado: $archivo - Ruta completa: $rutaCompleta`n"

    Set-Content -Path $logPath -Value $contenidoLog -Encoding UTF8

    Write-Host "ELIMINADO     -> $rutaCompleta"
    Write-Host "Log generado  -> $logPath"
}

# 5. Mensaje informativo
Write-Host "Vigilante activo en $Ruta (Ctrl+C para salir)"

# 6. Bucle infinito para mantener el script en ejecucion
while ($true) { Start-Sleep 1 }
