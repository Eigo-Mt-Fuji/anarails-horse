require "application_system_test_case"

class InsightsTest < ApplicationSystemTestCase
  setup do
    @insight = insights(:one)
  end

  test "visiting the index" do
    visit insights_url
    assert_selector "h1", text: "Insights"
  end

  test "creating a Insight" do
    visit insights_url
    click_on "New Insight"

    fill_in "A0", with: @insight.a0
    fill_in "A1", with: @insight.a1
    fill_in "A2", with: @insight.a2
    fill_in "A3", with: @insight.a3
    fill_in "A4", with: @insight.a4
    fill_in "A5", with: @insight.a5
    fill_in "A6", with: @insight.a6
    fill_in "A7", with: @insight.a7
    fill_in "A8", with: @insight.a8
    fill_in "A9", with: @insight.a9
    fill_in "Broodmare sire", with: @insight.broodmare_sire
    fill_in "Candidacy", with: @insight.candidacy
    fill_in "Course status", with: @insight.course_status
    fill_in "Day", with: @insight.day
    fill_in "Distance", with: @insight.distance
    fill_in "Farm", with: @insight.farm
    fill_in "Horse age", with: @insight.horse_age
    fill_in "Horse gender", with: @insight.horse_gender
    fill_in "Horse name", with: @insight.horse_name
    fill_in "Jockey", with: @insight.jockey
    fill_in "Location", with: @insight.location
    fill_in "Month", with: @insight.month
    fill_in "Odds", with: @insight.odds
    fill_in "Order difference", with: @insight.order_difference
    fill_in "Order finish", with: @insight.order_finish
    fill_in "Owner", with: @insight.owner
    fill_in "Popular", with: @insight.popular
    fill_in "Position", with: @insight.position
    fill_in "Post time", with: @insight.post_time
    fill_in "Race name", with: @insight.race_name
    fill_in "Race number", with: @insight.race_number
    fill_in "Record time", with: @insight.record_time
    fill_in "Sire", with: @insight.sire
    fill_in "Trainer", with: @insight.trainer
    fill_in "Traing center", with: @insight.traing_center
    fill_in "Up time", with: @insight.up_time
    fill_in "Weight carry", with: @insight.weight_carry
    fill_in "Year", with: @insight.year
    click_on "Create Insight"

    assert_text "Insight was successfully created"
    click_on "Back"
  end

  test "updating a Insight" do
    visit insights_url
    click_on "Edit", match: :first

    fill_in "A0", with: @insight.a0
    fill_in "A1", with: @insight.a1
    fill_in "A2", with: @insight.a2
    fill_in "A3", with: @insight.a3
    fill_in "A4", with: @insight.a4
    fill_in "A5", with: @insight.a5
    fill_in "A6", with: @insight.a6
    fill_in "A7", with: @insight.a7
    fill_in "A8", with: @insight.a8
    fill_in "A9", with: @insight.a9
    fill_in "Broodmare sire", with: @insight.broodmare_sire
    fill_in "Candidacy", with: @insight.candidacy
    fill_in "Course status", with: @insight.course_status
    fill_in "Day", with: @insight.day
    fill_in "Distance", with: @insight.distance
    fill_in "Farm", with: @insight.farm
    fill_in "Horse age", with: @insight.horse_age
    fill_in "Horse gender", with: @insight.horse_gender
    fill_in "Horse name", with: @insight.horse_name
    fill_in "Jockey", with: @insight.jockey
    fill_in "Location", with: @insight.location
    fill_in "Month", with: @insight.month
    fill_in "Odds", with: @insight.odds
    fill_in "Order difference", with: @insight.order_difference
    fill_in "Order finish", with: @insight.order_finish
    fill_in "Owner", with: @insight.owner
    fill_in "Popular", with: @insight.popular
    fill_in "Position", with: @insight.position
    fill_in "Post time", with: @insight.post_time
    fill_in "Race name", with: @insight.race_name
    fill_in "Race number", with: @insight.race_number
    fill_in "Record time", with: @insight.record_time
    fill_in "Sire", with: @insight.sire
    fill_in "Trainer", with: @insight.trainer
    fill_in "Traing center", with: @insight.traing_center
    fill_in "Up time", with: @insight.up_time
    fill_in "Weight carry", with: @insight.weight_carry
    fill_in "Year", with: @insight.year
    click_on "Update Insight"

    assert_text "Insight was successfully updated"
    click_on "Back"
  end

  test "destroying a Insight" do
    visit insights_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Insight was successfully destroyed"
  end
end
