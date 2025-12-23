# frozen_string_literal: true
# encoding: utf-8

require 'sinatra'
require 'date'

get '/' do
  erb :index
end

post '/hello' do
  name = params[:name]
  birth_date = Date.parse(params[:birth])

  today = Date.today
  age = today.year - birth_date.year
  age -= 1 if today < birth_date.next_year(age)

  major = age >= 18

  @name = name
  @age = age
  @major = major

  erb :hello
end