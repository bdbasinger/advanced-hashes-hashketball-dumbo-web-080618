# Write your code here!
require 'pry'







def game_hash

  {

  home: {

    team_name: "Brooklyn Nets",
    colors: ["Black", "White"],
    players: {

      "Alan Anderson" => {
        number: 0,
        shoe: 16,
        points: 22,
        rebounds: 12,
        assists: 12,
        steals: 3,
        blocks: 1,
        slam_dunks: 1
      },

      "Reggie Evans" => {
        number: 30,
        shoe: 14,
        points: 12,
        rebounds: 12,
        assists: 12,
        steals: 12,
        blocks: 12,
        slam_dunks: 7
      },

      "Brook Lopez" => {
        number: 11,
        shoe: 17,
        points: 17,
        rebounds: 19,
        assists: 10,
        steals: 3,
        blocks: 1,
        slam_dunks: 15
      },

      "Mason Plumlee" => {
        number: 1,
        shoe: 19,
        points: 26,
        rebounds: 12,
        assists: 6,
        steals: 3,
        blocks: 8,
        slam_dunks: 5
      },

      "Jason Terry" => {
        number: 31,
        shoe: 15,
        points: 19,
        rebounds: 2,
        assists: 2,
        steals: 4,
        blocks: 11,
        slam_dunks: 1
      }

    } # end of home team players

  }, # end of home





  away: {

    team_name: "Charlotte Hornets",

    colors: ["Turquoise", "Purple"],
    
    players: {

      "Jeff Adrien" => {
        number: 4,
        shoe: 18,
        points: 10,
        rebounds: 1,
        assists: 1,
        steals: 2,
        blocks: 7,
        slam_dunks: 2
      },

      "Bismak Biyombo" => {
        number: 0,
        shoe: 16,
        points: 12,
        rebounds: 4,
        assists: 7,
        steals: 7,
        blocks: 15,
        slam_dunks: 10
      },

      "DeSagna Diop" => {
        number: 2,
        shoe: 14,
        points: 24,
        rebounds: 12,
        assists: 12,
        steals: 4,
        blocks: 5,
        slam_dunks: 5
      },

      "Ben Gordon" => {
        number: 8,
        shoe: 15,
        points: 33,
        rebounds: 3,
        assists: 2,
        steals: 1,
        blocks: 1,
        slam_dunks: 0
      },

      "Brendan Haywood" => {
        number: 33,
        shoe: 15,
        points: 6,
        rebounds: 12,
        assists: 12,
        steals: 22,
        blocks: 5,
        slam_dunks: 12
      }

    } # end of away team players
  } # end of away


} # End of Main Hash

end 




def big_shoe_rebounds
  # Build a method, big_shoe_rebounds, that will return the 
  # number of rebounds associated with the player that has the largest shoe size.
  # Find the player with the largest shoe size
  # Return that player's number of rebounds
  size_of_shoe = 0
  name_of_player = ""
  game_hash[:home][:players].each do |player, stats|
    stats.each do |stat, amount|
      if (stat == :shoe) && (amount > size_of_shoe)
        size_of_shoe = amount
        name_of_player = player
      end
    end
  end
  game_hash[:away][:players].each do |player, stats|
    stats.each do |stat, amount|
      if (stat == :shoe) && (amount > size_of_shoe)
        size_of_shoe = amount
        name_of_player = player
      end
    end
  end
  game_hash[:home][:players].each do |player, stats|
    stats.each do |stat, amount|
      if (stat == :shoe) && (amount == size_of_shoe)
        return game_hash[:home][:players][player][:rebounds]
      end
    end
  end
  game_hash[:away][:players].each do |player, stats|
    stats.each do |stat, amount|
      if (stat == :shoe) && (amount == size_of_shoe)
        return game_hash[:home][:players][player][:rebounds]
      end
    end
  end
end







def player_numbers(team_name)
  # Build a method, player_numbers, that takes in an argument of a team name and 
  # returns an array of the jersey number's for that team.
  jersey_numbers = []
  if team_name == game_hash[:home][:team_name]
    game_hash[:home][:players].each do |name, data|
      data.each do |attribute, player_jersey_number|
        if attribute == :number
          jersey_numbers << player_jersey_number 
        end
      end
    end
  else
    game_hash[:away][:players].each do |name, data|
      data.each do |attribute, player_jersey_number|
        if attribute == :number
          jersey_numbers << player_jersey_number
        end
      end
    end
  end
  jersey_numbers
end


def player_stats(players_name)
  # Build a method, player_stats, that takes in an argument of a player's name and 
  # returns a hash of that player's stats.
  game_hash[:home][:players].each do |key, value|
    if key == players_name
      return value
    end
  end
  game_hash[:away][:players].each do |key, value|
    if key == players_name
      return value
    end
  end
end



def team_names
  [ game_hash[:home][:team_name], game_hash[:away][:team_name] ]
end



def num_points_scored(player_name)
  if game_hash[:home][:players].include?(player_name)
    game_hash[:home][:players][player_name].each do |key, value|
      if key == :points
        return value
      end
    end
  end
  if game_hash[:away][:players].include?(player_name)
    game_hash[:away][:players][player_name].each do |key, value|
      if key == :points
        return value
      end
    end
  end
  "Player not found"
end






def shoe_size(player_name)
  if game_hash[:home][:players].include?(player_name)
    game_hash[:home][:players][player_name].each do |key, value|
      if key == :shoe
        return value
      end
    end
  end
  if game_hash[:away][:players].include?(player_name)
    game_hash[:away][:players][player_name].each do |key, value|
      if key == :shoe
        return value
      end
    end
  end
  "Player not found"
end



def team_colors(team)
  if team == "Brooklyn Nets"
    game_hash[:home][:colors]
  elsif team == "Charlotte Hornets"
    game_hash[:away][:colors]
  else
    "Team not found"
  end
end


























