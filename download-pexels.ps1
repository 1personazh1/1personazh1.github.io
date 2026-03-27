$headers = @{ "Authorization" = "TBxVpzdlQzOuibDUrjJ7KBnr8famc5gLbKPuPn0iGhuU2hX55ikzCVg6" }
$baseDir = "D:\Projects\TestProjects\arttest\static\images"

# 1. Toyota Supra
$r1 = Invoke-RestMethod -Uri "https://api.pexels.com/v1/search?query=toyota+supra+mk4&orientation=landscape&per_page=3" -Headers $headers
$u1 = $r1.photos[0].src.landscape
Invoke-WebRequest -Uri $u1 -OutFile "$baseDir\supra-mk4.jpg"
Write-Output "=== supra-mk4 ==="
Write-Output "Photographer: $($r1.photos[0].photographer)"
Write-Output "Alt: $($r1.photos[0].alt)"
Write-Output "URL: $u1"
Write-Output "Size: $((Get-Item "$baseDir\supra-mk4.jpg").Length)"

# 2. Mazda RX-7
$r2 = Invoke-RestMethod -Uri "https://api.pexels.com/v1/search?query=mazda+rx7+fd&orientation=landscape&per_page=3" -Headers $headers
$u2 = $r2.photos[0].src.landscape
Invoke-WebRequest -Uri $u2 -OutFile "$baseDir\rx7-fd.jpg"
Write-Output "=== rx7-fd ==="
Write-Output "Photographer: $($r2.photos[0].photographer)"
Write-Output "Alt: $($r2.photos[0].alt)"
Write-Output "URL: $u2"
Write-Output "Size: $((Get-Item "$baseDir\rx7-fd.jpg").Length)"

# 3. Honda Civic Type R
$r3 = Invoke-RestMethod -Uri "https://api.pexels.com/v1/search?query=honda+civic+type+r&orientation=landscape&per_page=3" -Headers $headers
$u3 = $r3.photos[0].src.landscape
Invoke-WebRequest -Uri $u3 -OutFile "$baseDir\civic-type-r.jpg"
Write-Output "=== civic-type-r ==="
Write-Output "Photographer: $($r3.photos[0].photographer)"
Write-Output "Alt: $($r3.photos[0].alt)"
Write-Output "URL: $u3"
Write-Output "Size: $((Get-Item "$baseDir\civic-type-r.jpg").Length)"

# 4. Drift culture
$r4 = Invoke-RestMethod -Uri "https://api.pexels.com/v1/search?query=drift+car+smoke&orientation=landscape&per_page=3" -Headers $headers
$u4 = $r4.photos[0].src.landscape
Invoke-WebRequest -Uri $u4 -OutFile "$baseDir\drift-culture.jpg"
Write-Output "=== drift-culture ==="
Write-Output "Photographer: $($r4.photos[0].photographer)"
Write-Output "Alt: $($r4.photos[0].alt)"
Write-Output "URL: $u4"
Write-Output "Size: $((Get-Item "$baseDir\drift-culture.jpg").Length)"
