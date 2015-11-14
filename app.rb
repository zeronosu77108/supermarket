require 'sinatra'
require "sinatra/json"
require_relative 'lib/item.rb'
require_relative 'lib/item_database.rb'

get '/items/:name' do
  db = ItemDatabase.new
  db.register(Item.new('Apple',100))

  name = params['name']
  item = db.find(name)

  json(name: item.name, price: item.price)
end
