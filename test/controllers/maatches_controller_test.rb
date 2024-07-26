require "test_helper"

class MaatchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @maatch = maatches(:one)
  end

  test "should get index" do
    get maatches_url
    assert_response :success
  end

  test "should get new" do
    get new_maatch_url
    assert_response :success
  end

  test "should create maatch" do
    assert_difference("Maatch.count") do
      post maatches_url, params: { maatch: { away_team_id: @maatch.away_team_id, date: @maatch.date, home_team_id: @maatch.home_team_id, location: @maatch.location } }
    end

    assert_redirected_to maatch_url(Maatch.last)
  end

  test "should show maatch" do
    get maatch_url(@maatch)
    assert_response :success
  end

  test "should get edit" do
    get edit_maatch_url(@maatch)
    assert_response :success
  end

  test "should update maatch" do
    patch maatch_url(@maatch), params: { maatch: { away_team_id: @maatch.away_team_id, date: @maatch.date, home_team_id: @maatch.home_team_id, location: @maatch.location } }
    assert_redirected_to maatch_url(@maatch)
  end

  test "should destroy maatch" do
    assert_difference("Maatch.count", -1) do
      delete maatch_url(@maatch)
    end

    assert_redirected_to maatches_url
  end
end
