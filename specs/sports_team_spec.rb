require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TestSportsTeam < MiniTest::Test

  def test_team_name
      sports_team = SportsTeam.new("Rocket", "player1", "Pawel", "won")
      assert_equal("Rocket", sports_team.name)
    end

    def test_team_players
      sports_team = SportsTeam.new("Rocket", "player1", "Pawel", "won")
      assert_equal(["player1"], sports_team.players)
      end

    def test_team_coach
      sports_team = SportsTeam.new("Rocket", "player1", "Pawel", "won")
      assert_equal("Pawel", sports_team.coach)

      end

    def test_set_coach
      sports_team = SportsTeam.new("Rocket", "player1", "Pawel", "won")
      sports_team.coach = "Peter"

      assert_equal("Peter", sports_team.coach)
      end

      def test_add_player
   sports_team = SportsTeam.new("Rocket", "player1", "Pawel", "won")
   sports_team.add_player("player2")
   assert_equal(["player1", "player2"], sports_team.players())
 end

 def test_player_exists
   sports_team = SportsTeam.new("Rocket", "player1", "Pawel", "won")
   assert_equal(true, sports_team.player_exists?("player1"))
 end

 def test_won_lost
   sports_team = SportsTeam.new("Rocket", "player1", "Pawel", "won")
   assert_equal(1, sports_team.won_lost("won"))
 end

end
