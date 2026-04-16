$numero_secreto = Get-Random -Minimum 1 -Maximum 100
$intentos = 0
Write-Host "Bienvenido al juego de adivinar el numero"
Write-Host "Estoy pensando en un numero entre 1 y 100."

while ($true) {
    $intentos++
    $adivinanza = Read-Host "Introduce tu adivinanza"

    if ($adivinanza -eq $numero_secreto) {
        Write-Host "Felicidades. Has adivinado el numero en $intentos intentos."
        break
    } elseif ($adivinanza -lt $numero_secreto) {
        Write-Host "Demasiado bajo. Intenta de nuevo."
    } else {
        Write-Host "Demasiado alto. Intenta de nuevo."
    }
}