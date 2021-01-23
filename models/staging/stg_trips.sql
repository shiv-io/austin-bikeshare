select
    trip_id,
    bikeid as bike_id,
    start_time,
    start_station_id as station_id
from `bigquery-public-data.austin_bikeshare.bikeshare_trips`