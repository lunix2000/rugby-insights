require "test_helper"

class MatchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @match = matches(:one)
  end

  test "should get index" do
    get matches_url
    assert_response :success
  end

  test "should get new" do
    get new_match_url
    assert_response :success
  end

  test "should create match" do
    assert_difference("Match.count") do
      post matches_url, params: { match: { away_score: @match.away_score, away_team: @match.away_team, home_score: @match.home_score, home_team: @match.home_team, notes: @match.notes, penalties: @match.penalties, possession: @match.possession, tackles_made: @match.tackles_made, tackles_missed: @match.tackles_missed } }
    end

    assert_redirected_to match_url(Match.last)
  end

  test "should show match" do
    get match_url(@match)
    assert_response :success
  end

  test "should get edit" do
    get edit_match_url(@match)
    assert_response :success
  end

  test "should update match" do
    patch match_url(@match), params: { match: { away_score: @match.away_score, away_team: @match.away_team, home_score: @match.home_score, home_team: @match.home_team, notes: @match.notes, penalties: @match.penalties, possession: @match.possession, tackles_made: @match.tackles_made, tackles_missed: @match.tackles_missed } }
    assert_redirected_to match_url(@match)
  end

  test "should destroy match" do
    assert_difference("Match.count", -1) do
      delete match_url(@match)
    end

    assert_redirected_to matches_url
  end
end
