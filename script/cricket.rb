module Cricket
  class Player
    attr_accessor :name, :runs, :wickets

    def initialize(name)
      @name = name
      @runs = 0
      @wickets = 0
    end

    def add_runs(runs)
      @runs += runs
    end

    def add_wicket
      @wickets += 1
    end

    def statistics
      {
        name: @name,
        runs: @runs,
        wickets: @wickets
      }
    end

    def to_s
      "#{@name} scored #{@runs} and taken #{@wickets} wickets"
    end
  end

  class Team
    attr_accessor :name, :players

    def initialize(name)
      @name = name
      @players = []
      @max_players = 15
    end

    def add_player(player)
      if @players.size < @max_players
        @players << player
      else
        puts "Cannot add more players, team is full."
      end
    end

    def remove_player(player_name)
      @players.reject! { |player| player.name == player_name }
    end

    def team_statistics
      {
        team_name: @name,
        total_runs: @players.sum(&:runs),
        total_wickets: @players.sum(&:wickets),
        players: @players.map(&:statistics)
      }
    end

    def all_players_data
      @players.map(&:to_s).join("\n")
    end
  end
end

# Create a team with 15 players and display their data
team = Cricket::Team.new("Team A")

# Adding 15 players to the team
(1..15).each do |i|
  player = Cricket::Player.new("Player #{i}")
  player.add_runs(rand(0..100))  # Random runs between 0 and 100
  player.add_wicket if rand(2).zero?  # Randomly adding wickets
  team.add_player(player)
end

puts team.all_players_data