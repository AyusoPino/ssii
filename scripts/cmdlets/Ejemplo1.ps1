#EJEMPLO A
$pass = "Temporal123!" | ConvertTo-SecureString -AsPlainText -Force
New-LocalUser -Name "InvitadoDAW" -Password $pass -FullName "Invitado DAW" -Description "Acceso de 1 dia" 
Add-LocalGroupMember -Group "Usuarios Avanzados" -Member "Tecnico1"