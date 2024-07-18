require_relative 'config/environment'

puts "Retrieve all players of a specific team."
team10_player = Player.select(:name, :team_id).where(team_id: 10)
team10_player.each do |p|
    puts "#{p.name} : #{p.team_id}"
end

puts "Retrieve players older than a certain age."
players_older_than_25 = Player.select(:name, :age).where('age > ?', 30)
players_older_than_25.each do |p|
    puts "#{p.name} : #{p.age}"
end

puts "List all players and their corresponding teams."
players_and_teams = Player.select(:name, :team_id)
players_and_teams.each do |p|
    puts "#{p.name} Team_id: #{p.team_id}"
end

puts "Insert a new player into a team."
p Player.create(name: 'Player 31', age: 33, position: 'Defender', team_id: 3)

puts "Update a player's position."
Player.find(6).update(position: 'Forward')
player6_position = Player.select(:name, :position).where(id: 6)
player6_position.each do |p|
    puts "#{p.name} : #{p.position}"
end

puts "Delete a player by their name."
Player.delete_by(name: 'Player 30')

puts "Retrieve the average age of players in each team."
p Player.group(:team_id).average(:age)

puts "Get the count of players in each team including teams without any
players."
player_count_in_team = Player.group(:team_id).select('count(id) as player_count, team_id')
player_count_in_team.each do |team|
    puts "#{team.team_id} : #{team.player_count}"
end

puts "Filter teams with more than a certain number of players."
