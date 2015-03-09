# http://codekata.com/kata/kata04-data-munging/
require 'CSV'

def weather_dat(file)
  smallest_spread_day = String.new
  smallest_spread = 100 # impossible dummy value to start
  CSV.foreach(file) do |row|
    next if row[0] == nil
    row_data = row[0].split(" ").to_a
    next if row_data[0] == "Dy"
    day = row_data[0]
    max_temp = row_data[1].to_i
    min_temp = row_data[2].to_i
    spread = max_temp - min_temp
    if spread < smallest_spread
      smallest_spread_day = day
      smallest_spread = spread
    end
  end
  smallest_spread_day
end

def football_dat(file)
  smallest_gd_team = String.new
  smallest_goal_differential = 100 #
  CSV.foreach(file) do |row|
    row_data = row[0].split(" ").to_a
    #next if row_data[0] == "Team"
    next if row_data[0].include? "---"
    goals_against = row_data[-2].to_i
    goals_for = row_data[5].to_i
    goal_diff = goals_for - goals_against
    team = row_data[1]
    if goal_diff < smallest_goal_differential
      smallest_goal_differential = goal_diff
      smallest_gd_team = team
    end
  end
  smallest_gd_team
end

def parse_data(file,lg_index,sm_index,val_index)
  smallest_value = String.new
  smallest_spread = 100
  CSV.foreach(file) do |row|
    next if row[0] == nil
    row_data = row[0].split(" ").to_a
    next if row_data[0] == "Dy" 
    next if row_data[0] == "Team" 
    next if row_data[0].include? "---"
    value = row_data[val_index]
    large = row_data[lg_index].to_i
    small = row_data[sm_index].to_i
    spread = large - small
    if spread < smallest_spread
      smallest_value = value
      smallest_spread = spread
    end
  end
  smallest_value
end

puts weather_dat("weather.dat") == parse_data("weather.dat",1,2,0)
puts football_dat("football.dat") == parse_data("football.dat",5,-2,1)
