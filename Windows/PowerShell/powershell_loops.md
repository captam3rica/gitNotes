# Loops in PowerShell

## ForEach-Object

- Performs an operation for each input object


    $array = 1,2,3,4,5
    $array | ForeEach {Write-Host $_ }

or

    ForEach ($value in $array) {Write-Host $value}


## For

For ($i=1; $i -lt 5; $i++){Write-Host $i}


## While

$i = 1

While($i -lt 5) {Write-Host $i; $i++}

### Do While

$i = 1
do {Write-Host $i; $i++}
while ($i -lt 5)


### Do Until 

$i = 1
do {Write-Host $i; $i++}
until ($i -gt 5)
