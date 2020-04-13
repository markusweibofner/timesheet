#Set date
date=$(date +%Y_%m_%d)
datenice=$(date +%d_%m_%y)
id=$(date +%Y%m%d%H%M%S)
#Set start time
start=$(date +%H:%M)
start_seconds=$(date +%s)


file=Project-$date.txt
echo "$start: Der Timer wurde gestartet"
cd Worktimes
echo "ID: $id" >> $file
echo "Datum: $datenice" >> $file
echo "Startzeit: $start" >> $file

read -p "Bitte Entertaste drücken, um Timer zu beenden"

stop=$(date +%H:%M)
end_seconds=$(date +%s)
dauer_sec=$((end_seconds - start_seconds))
dauer_sec="$(printf '%05d' "$dauer_sec")"
dauer_min=$((10#$dauer_sec / 60))
dauer_min="$(printf '%03d' "$dauer_min")"
echo "Du hast $dauer_sec Sekunden bzw. $dauer_min Minuten gearbeitet."
echo "Endzeit: $stop" >> $file
echo "Dauer (min): $dauer_min  " >> $file
echo "Ende: ." >> $file
echo "" >> $file
