class Insight < ApplicationRecord
    # SQL: concat(location, race_name, " ", race_number, "R") as race_display
    def race_display
        "#{try(:location)} #{try(:race_name)} #{try(:race_number)}R".to_s
    end
    # SQL: concat(year, "-", month, "-", day, " ", post_time) as race_at_display
    def race_at_display
        "#{try(:year)}-#{try(:month)}-#{try(:day)} #{post_time}".to_s
    end
    # SQL: concat(course_status, distance, "m") as course_display
    def course_display
        "#{try(:course_status)} #{try(:distance)}m".to_s
    end
    # SQL: concat(order_finish, " 着") as order_display 
    def order_display
        "#{try(:order_finish)} 着".to_s
    end 
    # SQL: concat(horse_name, horse_gender, horse_age) as horse_display
    def horse_display
        "#{try(:horse_name)} #{try(:horse_age)}歳馬 #{try(:horse_gender)}".to_s
    end
    # SQL: concat(popular, "番人気") as popular_display
    def popular_display
        "#{try(:popular)} 番人気".to_s
    end
end
