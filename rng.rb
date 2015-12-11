require 'sinatra'
require 'securerandom'
require 'json'

get '/' do
  "#{SecureRandom.random_number}"
end

get '/rng' do
  if params[:limit]
    limit = params[:limit].to_i
    return { "random" => SecureRandom.random_number(limit) }.to_json
  elsif params[:hex]
    return { "random" => SecureRandom.hex(params[:hex].to_i) }.to_json
  elsif params[:base64]
    return { "random" => SecureRandom.base64(params[:base64].to_i) }.to_json
  elsif params[:uuid]
    return { "random_number" => SecureRandom.uuid }.to_json
  else
    return { "random" => SecureRandom.random_number }.to_json
  end
end

not_found do
  redirect to '/'
end
