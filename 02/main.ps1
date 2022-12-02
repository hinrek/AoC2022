$sum1 = 0

foreach ($line in Get-Content .\input.txt) {
    $poop,$peep = $line -Split " "

    if ($peep -eq "X") { $sum1 += 1 }
    if ($peep -eq "Y") { $sum1 += 2 }
    if ($peep -eq "Z") { $sum1 += 3 }

    if ($poop -eq "A" -and $peep -eq "X") { $sum1 += 3 }
    if ($poop -eq "A" -and $peep -eq "Y") { $sum1 += 6 }
    if ($poop -eq "A" -and $peep -eq "Z") { $sum1 += 0 }

    if ($poop -eq "B" -and $peep -eq "X") { $sum1 += 0 }
    if ($poop -eq "B" -and $peep -eq "Y") { $sum1 += 3 }
    if ($poop -eq "B" -and $peep -eq "Z") { $sum1 += 6 }

    if ($poop -eq "C" -and $peep -eq "X") { $sum1 += 6 }
    if ($poop -eq "C" -and $peep -eq "Y") { $sum1 += 0 }
    if ($poop -eq "C" -and $peep -eq "Z") { $sum1 += 3 }
}

$sum1

$sum2 = 0

foreach ($line in Get-Content .\input.txt) {
    $poop,$peep = $line -Split " "

    if ($poop -eq "A" -and $peep -eq "Y") { $sum2 += 4 }
    if ($poop -eq "A" -and $peep -eq "Z") { $sum2 += 8 }
    if ($poop -eq "A" -and $peep -eq "X") { $sum2 += 3 }

    if ($poop -eq "B" -and $peep -eq "X") { $sum2 += 1 }
    if ($poop -eq "B" -and $peep -eq "Y") { $sum2 += 5 }
    if ($poop -eq "B" -and $peep -eq "Z") { $sum2 += 9 }

    if ($poop -eq "C" -and $peep -eq "Z") { $sum2 += 7 }
    if ($poop -eq "C" -and $peep -eq "X") { $sum2 += 2 }
    if ($poop -eq "C" -and $peep -eq "Y") { $sum2 += 6 }
}

$sum2