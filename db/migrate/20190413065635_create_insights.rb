class CreateInsights < ActiveRecord::Migration[5.2]
  def change
    create_table :insights do |t|
      t.text :year
      t.text :month
      t.text :day
      t.text :location
      t.integer :race_number
      t.text :race_name
      t.text :a0
      t.text :course_status
      t.integer :distance
      t.integer :candidacy
      t.string :post_time
      t.text :a1
      t.text :a2
      t.text :a3
      t.text :horse_name
      t.text :horse_gender
      t.integer :horse_age
      t.text :jockey
      t.float :weight_carry
      t.integer :order_finish
      t.float :order_difference
      t.integer :popular
      t.float :odds
      t.text :record_time
      t.text :a4
      t.text :a5
      t.text :a6
      t.text :a7
      t.text :position
      t.text :up_time
      t.text :a8
      t.text :trainer
      t.text :traing_center
      t.text :a9
      t.text :owner
      t.text :farm
      t.text :sire
      t.text :broodmare_sire

      t.timestamps
    end
  end
end
