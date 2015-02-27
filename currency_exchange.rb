# http://programmingpraxis.com/2015/02/27/currency-exchange/2/
require 'net/http'
require 'json'

def convert_btc_usd(number,original)
  source = "https://api.bitcoinaverage.com/ticker/global/USD/"
  response = Net::HTTP.get_response(URI.parse(source))
  data = response.body
  current_data = JSON.parse(data)
  btc_price_in_usd = current_data["24h_avg"] 
  original == "usd" ? number * btc_price_in_usd : number / btc_price_in_usd
end

puts convert_btc_usd(ARGV[0].to_i,(ARGV[1] || "usd"))
