$nota = Read-Host "Introduce la nota: " 

switch ($nota) {
    {$_ -lt 5} { "Suspenso" }
    {$_ -ge 5 -and $_ -lt 7} { "Aprobado" }
    {$_ -ge 7 -and $_ -lt 9} { "Notable" }
    {$_ -eq 9 -or $_ -eq 10} { "Sobresaliente" }
    Default { "Nota no válida" }
}