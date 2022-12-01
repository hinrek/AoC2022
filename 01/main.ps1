$list = New-Object Collections.Generic.List[Int]
$sum = 0

foreach ($line in Get-Content .\input.txt) {
    $sum += $line
    if ($line.Length -eq 0) {
        $list.Add($sum)
        $sum = 0
    }
}

$list | Sort-Object -Bottom 1
$list | Sort-Object -Bottom 3 | Measure-Object -Sum | Select-Object -expand Sum
