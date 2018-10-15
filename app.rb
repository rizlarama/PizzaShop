#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:pizzashop.db"

class Product < ActiveRecord::Base; end

class Order < ActiveRecord::Base; end

get '/' do
	@products = Product.all
	erb :index
end

get '/about' do
	erb :about
end

post '/cart' do
	@order = Order.new
  	erb :cart
end

post '/order' do
	@order = Order.new params[:order]
	@order.save

  	erb "Thank you, your order is accepted!"
end