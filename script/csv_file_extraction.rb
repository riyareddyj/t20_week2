require 'csv'

csv_file_path = 'sample_cricket_stats.csv'

def process_data(csv_file_path)
  players_data = []
  begin
    CSV.foreach(csv_file_path, headers: true) do |row|
      balls_faced = row['Balls faced'].to_i
      strike_rate = balls_faced > 0 ? (row['Runs scored'].to_f / balls_faced.to_f) * 100 : 0.0
      player = {}
      player[:name] = row['Player name']
      player[:runs] = row['Runs scored'].to_i
      player[:balls] = row['Balls faced'].to_i
      player[:fours] = row['number of fours'].to_i
      player[:sixes] = row['number of sixes'].to_i
      player[:strike_rate] = strike_rate
      players_data << player
    end
  rescue StandardError => e
    puts "An error occurred while processing the data: #{e.message}"
  end
  players_data
end

def print_data(players_data)
  player_with_highest_strike_rate = players_data.max_by { |player| player[:strike_rate] }
  total_runs = players_data.sum { |player| player[:runs] }
  total_balls = players_data.sum { |player| player[:balls] }
  player_with_most_fours = players_data.max_by { |player| player[:fours] }
  player_with_most_sixes = players_data.max_by { |player| player[:sixes] }

  begin
    players_data.each do |player|
      puts "Strike rate of #{player[:name]} is #{player[:strike_rate]}"
    end
    puts "Player with highest strike rate is #{player_with_highest_strike_rate[:name]} with a strike rate of #{player_with_highest_strike_rate[:strike_rate]}"
    puts "Total runs scored by all players is #{total_runs}"
    puts "Total balls faced by all players is #{total_balls}"
    puts "Player with most fours is #{player_with_most_fours[:name]} with #{player_with_most_fours[:fours]} fours"
    puts "Player with most sixes is #{player_with_most_sixes[:name]} with #{player_with_most_sixes[:sixes]} sixes"
  rescue StandardError => e
    puts "An error occurred while printing the stats: #{e.message}"
  end
end

data = process_data(csv_file_path)
print_data(data)
