class SportsTeam

attr_reader :name, :players, :coach
attr_writer :coach


def initialize(name, players, coach, points)

  @name = name
  @players = [players]
  @coach = coach
  @points = 0

  end

def team_name
  return @name
end

def team_players
  return @players
end


def team_coach
  return @coach
end

def set_coach_name(name)
  @pcoach = name
end

def add_player(name)
   @players = players.push(name)
 end

 def player_exists?(name)
   for player in @players
     if player == name
       return true
     end
   end
   return false
 end

 def won_lost(result)
   if result == "won"
     @points += 1
   else return
   end
  end




end
