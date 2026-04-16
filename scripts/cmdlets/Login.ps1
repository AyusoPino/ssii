# Comprobar si el usuario actual es administrador

$usuario = $env:USERNAME

$esAdmin = ([Security.Principal.WindowsPrincipal] `
[Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole(`
[Security.Principal.WindowsBuiltInRole]::Administrator)

Write-Host "Usuario: $usuario"

if ($esAdmin) {
    Write-Host "Has iniciado sesion como ADMINISTRADOR" -ForegroundColor Green
} else {
    Write-Host "Has iniciado sesion como USUARIO NORMAL" -ForegroundColor Yellow
}