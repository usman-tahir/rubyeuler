# http://programmingpraxis.com/2015/02/27/currency-exchange/
require 'net/http'
require 'json'

def convert_btc_usd(number,original)
  response = Net::HTTP.get_response(URI.parse("https://api.bitcoinaverage.com/ticker/global/USD/"))
  btc_price_in_usd = JSON.parse(response.body)["24h_avg"]
  original == "usd" ? number * btc_price_in_usd : number / btc_price_in_usd
end

puts convert_btc_usd(ARGV[0].to_i,(ARGV[1] || "usd"))
