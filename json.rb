require 'json'
require 'net/http'

source = 'http://www3.septa.org/hackathon/Arrivals/East%20Falls/5'
response = Net::HTTP.get_response(URI.parse(source))
data = response.body
train_hash = JSON.parse(data)
train = train_hash.values[0][0]["Northbound"][0]

p "Train #{train["train_id"]} to #{train["destination"]} scheduled to arrive at #{train["sched_time"]} is #{train["status"]} minutes late."
