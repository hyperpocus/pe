start_date="2021-12-12"
end_date="2023-01-01"
random_epoch=$(shuf -i $(date -j -f '%Y-%m-%d' "$start_date" +%s)-$(date -j -f '%Y-%m-%d' "$end_date" +%s) -n 1)
start_date_seconds=$(date -j -f '%Y-%m-%d' "$start_date" +%s)
end_date_seconds=$(date -j -f '%Y-%m-%d' "$end_date" +%s)
date -j -r  "$start_date_seconds"
echo $start_date_seconds
date -j -r "$end_date_seconds"
echo $end_date_seconds
date -j -r "$(shuf -i "$start_date_seconds"-"$end_date_seconds" -n 1)"