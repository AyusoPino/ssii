# Eliminar usuario "ssii"
Remove-LocalUser -Name "ssii"

# Eliminar carpeta "ssii_dir"
$path = "C:\ssii_dir"
Remove-Item -Path $path -Recurse -Force

# Mensaje final
Write-Host "Todo ha sido eliminado correctamente."