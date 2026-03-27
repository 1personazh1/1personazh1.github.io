$headers = @{ "Authorization" = "TBxVpzdlQzOuibDUrjJ7KBnr8famc5gLbKPuPn0iGhuU2hX55ikzCVg6" }
$baseDir = "D:\Projects\TestProjects\arttest\static\images"

# 1. JDM History - japanese car culture
$r1 = Invoke-RestMethod -Uri "https://api.pexels.com/v1/search?query=jdm+car+meet+japan&orientation=landscape&per_page=3" -Headers $headers
$u1 = $r1.photos[0].src.landscape
Invoke-WebRequest -Uri $u1 -OutFile "$baseDir\jdm-history.jpg"
Write-Output "=== jdm-history ==="
Write-Output "Photographer: $($r1.photos[0].photographer)"
Write-Output "Alt: $($r1.photos[0].alt)"
Write-Output "URL: $u1"
Write-Output "Size: $((Get-Item "$baseDir\jdm-history.jpg").Length)"

# 2. Tuning basics - car engine tuning
$r2 = Invoke-RestMethod -Uri "https://api.pexels.com/v1/search?query=car+engine+tuning+modification&orientation=landscape&per_page=3" -Headers $headers
$u2 = $r2.photos[0].src.landscape
Invoke-WebRequest -Uri $u2 -OutFile "$baseDir\tuning-basics.jpg"
Write-Output "=== tuning-basics ==="
Write-Output "Photographer: $($r2.photos[0].photographer)"
Write-Output "Alt: $($r2.photos[0].alt)"
Write-Output "URL: $u2"
Write-Output "Size: $((Get-Item "$baseDir\tuning-basics.jpg").Length)"

# 3. Best JDM engines
$r3 = Invoke-RestMethod -Uri "https://api.pexels.com/v1/search?query=sports+car+engine+detail&orientation=landscape&per_page=3" -Headers $headers
$u3 = $r3.photos[0].src.landscape
Invoke-WebRequest -Uri $u3 -OutFile "$baseDir\best-jdm-engines.jpg"
Write-Output "=== best-jdm-engines ==="
Write-Output "Photographer: $($r3.photos[0].photographer)"
Write-Output "Alt: $($r3.photos[0].alt)"
Write-Output "URL: $u3"
Write-Output "Size: $((Get-Item "$baseDir\best-jdm-engines.jpg").Length)"

# 4. Hero background - jdm sports car
$r4 = Invoke-RestMethod -Uri "https://api.pexels.com/v1/search?query=jdm+sports+car+night&orientation=landscape&per_page=3" -Headers $headers
$u4 = $r4.photos[0].src.large2x
Invoke-WebRequest -Uri $u4 -OutFile "$baseDir\hero-bg.jpg"
Write-Output "=== hero-bg ==="
Write-Output "Photographer: $($r4.photos[0].photographer)"
Write-Output "Alt: $($r4.photos[0].alt)"
Write-Output "URL: $u4"
Write-Output "Size: $((Get-Item "$baseDir\hero-bg.jpg").Length)"
