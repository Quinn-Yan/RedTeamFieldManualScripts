for x in {1..10000..1};do  nmap -T5 -sX -S $spoofsrcip -D $commonseparatedlistofdecoyips --spoof-mac aa:bb:cc:dd:ee:ff -e $ifae-Pn $target;done
