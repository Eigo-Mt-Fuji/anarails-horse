require 'test_helper'

class InsightsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @insight = insights(:one)
  end

  test "should get index" do
    get insights_url
    assert_response :success
  end

  test "should get new" do
    get new_insight_url
    assert_response :success
  end

  test "should create insight" do
    assert_difference('Insight.count') do
      post insights_url, params: { insight: { a0: @insight.a0, a1: @insight.a1, a2: @insight.a2, a3: @insight.a3, a4: @insight.a4, a5: @insight.a5, a6: @insight.a6, a7: @insight.a7, a8: @insight.a8, a9: @insight.a9, broodmare_sire: @insight.broodmare_sire, candidacy: @insight.candidacy, course_status: @insight.course_status, day: @insight.day, distance: @insight.distance, farm: @insight.farm, horse_age: @insight.horse_age, horse_gender: @insight.horse_gender, horse_name: @insight.horse_name, jockey: @insight.jockey, location: @insight.location, month: @insight.month, odds: @insight.odds, order_difference: @insight.order_difference, order_finish: @insight.order_finish, owner: @insight.owner, popular: @insight.popular, position: @insight.position, post_time: @insight.post_time, race_name: @insight.race_name, race_number: @insight.race_number, record_time: @insight.record_time, sire: @insight.sire, trainer: @insight.trainer, traing_center: @insight.traing_center, up_time: @insight.up_time, weight_carry: @insight.weight_carry, year: @insight.year } }
    end

    assert_redirected_to insight_url(Insight.last)
  end

  test "should show insight" do
    get insight_url(@insight)
    assert_response :success
  end

  test "should get edit" do
    get edit_insight_url(@insight)
    assert_response :success
  end

  test "should update insight" do
    patch insight_url(@insight), params: { insight: { a0: @insight.a0, a1: @insight.a1, a2: @insight.a2, a3: @insight.a3, a4: @insight.a4, a5: @insight.a5, a6: @insight.a6, a7: @insight.a7, a8: @insight.a8, a9: @insight.a9, broodmare_sire: @insight.broodmare_sire, candidacy: @insight.candidacy, course_status: @insight.course_status, day: @insight.day, distance: @insight.distance, farm: @insight.farm, horse_age: @insight.horse_age, horse_gender: @insight.horse_gender, horse_name: @insight.horse_name, jockey: @insight.jockey, location: @insight.location, month: @insight.month, odds: @insight.odds, order_difference: @insight.order_difference, order_finish: @insight.order_finish, owner: @insight.owner, popular: @insight.popular, position: @insight.position, post_time: @insight.post_time, race_name: @insight.race_name, race_number: @insight.race_number, record_time: @insight.record_time, sire: @insight.sire, trainer: @insight.trainer, traing_center: @insight.traing_center, up_time: @insight.up_time, weight_carry: @insight.weight_carry, year: @insight.year } }
    assert_redirected_to insight_url(@insight)
  end

  test "should destroy insight" do
    assert_difference('Insight.count', -1) do
      delete insight_url(@insight)
    end

    assert_redirected_to insights_url
  end
end
