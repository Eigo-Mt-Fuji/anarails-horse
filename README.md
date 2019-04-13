# README
## Command 

```
vi Gemfile # add mysql2
vi config/database.yml # fix connection
bundle exec db:create
bundle exec rails db:create
bundle exec rails db:migrate
bundle exec rails g scaffold Insight year:text month:text day:text location:text race_name:text course_status:text distance:integer candidacy:integer post_time:string a1:text a2:text a3:text horse_name:text horse_gender:text horse_age:integer jockey:text weight_carry:float order_finish:integer order_difference:float popular:integer odds:integer time:text a4:text a5:text a6:text position:text up_time:text a7:text trainer:text traing_center:text a8:text owner:text farm:text sire:text broodmare_sire:text
```

## Data Format

```
19 # 年
01 # 月
05 # 日
京都 # 場所
11 # レース
京都金杯ＨG3 # 競馬場
芝 # 馬場状態
1600 # 距離
17 # 頭数	
15:45 # 出走時間
2, a1
1, a2
1, a3
サラキア, # 名前
牝, # 性別
4, # 年齢
池添謙一, # 騎手
53.0, # 斤量
7, # 着順
0.4, # 着差
2, # 人気
4.8, # オッズ
95.3, # タイム
0, a4
0, a5
6,9, a6
中団, # 位置取り
35.0, # 上りタイム
8, # a7
池添学, # 調教師
栗, # 施設
0, # a8
シルクレーシング, # 馬主
ノーザンファーム, # 牧場
ディープインパクト,血統（父）
Lomitas # 血統（母父）
```

