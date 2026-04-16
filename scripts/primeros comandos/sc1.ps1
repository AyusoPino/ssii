# Crear usuario "ssii" con contraseña "ssii"
$password = ConvertTo-SecureString "ssii" -AsPlainText -Force
New-LocalUser -Name "ssii" -Password $password -FullName "ssii"

# Crear carpeta "ssii_dir" en C:\
$path = "C:\ssii_dir"
New-Item -ItemType Directory -Path $path -Force

# Crear fichero con fecha, usuario y mensaje
$filePath = "$path\info.txt"
$fecha = Get-Date
$usuario = "ssii"
$mensaje = "Este es el primer fichero del usuario"

Add-Content -Path $filePath -Value "Fecha: $fecha"
Add-Content -Path $filePath -Value "Usuario: $usuario"
Add-Content -Path $filePath -Value "Mensaje: $mensaje"

# Mostrar mensaje final
Write-Host "Proceso completado correctamente."