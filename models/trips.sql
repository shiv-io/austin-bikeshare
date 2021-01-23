{{
  config(
    materialized='view'
  )
}}

with stations as (

  select * from {{ ref('stg_stations') }}
),

trips as (

  select * from {{ ref('stg_trips') }}
),

station_trips as (
  select
    stations.station_id,
    stations.name,
    stations.status,
    trips.start_time,
    trips.bike_id,
    trips.trip_id
  from stations
  left join trips using (station_id)
)

select * from station_trips order by start_time limit 50