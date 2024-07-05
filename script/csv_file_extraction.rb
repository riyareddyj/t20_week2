require 'csv'
require 'open-uri'
# Path to your CSV file
csv_file_path = 'https://docs.google.com/spreadsheets/d/1_FcAY2HdwasRk6a8cijKvOmrs2onwvQe2--l5Q0gDCY/edit?gid=1708504131#gid=1708504131'

require 'rubygems'
require 'open-uri'
require 'csv'

def read(url)
  data = []
  begin
    open(url) do |f|
      data = CSV.parse f
    end
  end

  puts data
end

read(csv_file_path)

#     CSV.foreach(file, headers: true) do |row|
#       player = {}
#       player[:name] = row['Player name']
#       player[:runs] = row['Runs scored']
#       player[:balls] = row['Balls faced']
#       player[:fours] = row['number of fours']
#       player[:sixes] = row['number of sixes']
#       player[:strike_rate] = player[:runs]/ player[:balls]
#       players_data << player
#     end
#   rescue StandardError => e
#     puts "An error occurred while processing the data: #{e.message}"
#   end
#   players_data
# end
 
# process_data(csv_file_path)

# def print_data(players_data)
#   total_runs = players_data.sum { |player| player[:runs] }
#   total_balls = players_data.sum { |player| player[:balls] }
#   player_with_highest_strike_rate = players_data.max_by { |player| player[:strike_rate] }
#   player_with_most_fours = players_data.max_by { |player| player[:fours] }
#   player_with_most_sixes = players_data.max_by { |player| player[:sixes] }

#   begin
#     players_data.each do |player|
#       puts "Strike rate of #{player[:name]} is #{player[:strike_rate]}"
#     end
#     puts "Player with highest strike rate is #{player_with_highest_strike_rate[:name]} with a strike rate of #{player_with_highest_strike_rate[:strike_rate]}"
#     puts "Total runs scored by all players is #{total_runs}"
#     puts "Total balls faced by all players is #{total_balls}"
#     puts "Player with most fours is #{player_with_most_fours[:name]} with #{player_with_most_fours[:fours]} fours"
#     puts "Player with most sixes is #{player_with_most_sixes[:name]} with #{player_with_most_sixes[:sixes]} sixes"
#   rescue StandardError => e
#     puts "An error occurred while printing the stats: #{e.message}"
#   end
# end
