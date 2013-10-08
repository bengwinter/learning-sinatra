require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

get '/' do
	"hello root!"
end

get '/hi' do
  "Hello World!"
end

get '/maths' do
	(1 + 5).to_s
end

get '/time' do
	Time.now.to_s
end

get '/advanced_time' do
	"<h1>The current time is #{Time.now}</h1>"
end

get '/maths/add/:x/:y' do
	x = params[:x].to_f
	y = params[:y].to_f
	(x + y).to_s
end

get '/maths/subtract/:x/:y' do
	x = params[:x].to_f
	y = params[:y].to_f
	(x - y).to_s
end

get '/maths/multiply/:x/:y' do
	x = params[:x].to_f
	y = params[:y].to_f
	(x * y).to_s
end

get '/maths/divide/:x/:y' do
	x = params[:x].to_f
	y = params[:y].to_f
	(x / y).to_s
end


