LOAD DATA LOCAL INFILE 
  './hanshinhinba19-utf8.csv' 
INTO TABLE 
  insights
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' (
  year,
  month,
  day,
  location,
  race_number,
  race_name,
  course_status,
  distance,
  candidacy,
  post_time,
  a1,
  a2,
  a3,
  horse_name,
  horse_gender,
  horse_age,
  jockey,
  weight_carry,
  order_finish,
  order_difference,
  popular,
  odds,
  record_time,
  a4,
  a5,
  a6,
  a7,
  position,
  up_time,
  a8,
  trainer,
  traing_center,
  a9,
  owner,
  farm,
  sire,
  broodmare_sire
)
SET 
  created_at = CURRENT_TIMESTAMP,
  updated_at = CURRENT_TIMESTAMP
;

