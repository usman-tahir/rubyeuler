#!/usr/bin/env ruby
# http://programmingpraxis.com/2015/05/19/baseball-scores/
require 'net/http'

def get_baseball_score(team)
  uri = URI.parse('http://sports.espn.go.com/mlb/bottomline/scores')
  response = Net::HTTP.get_response(uri)
  scores = response.body
  scores.gsub!(/%20/, ' ')
  team_index = scores.index(team)
  team_index -= 1 until scores[team_index] == "="
  team_index += 1
  score = scores[team_index..-1]; r_i = 0
  (0...scores.length).each {|i| r_i = i-1 if score[i] == ")"; break if score[i] == ")" }
  score = score[0..r_i]
  score.gsub!(/\^/, '').gsub!(/   /, ', ') << ")"
  return score.start_with?(", ") ? score[2..-1] : score
end

puts get_baseball_score("San Francisco")
