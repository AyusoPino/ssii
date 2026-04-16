for($i = 1; $i -le 10; $i++) {
    if($i -eq 5) {continue}
    if($i -eq 8) {break}
    Write-host $i
}