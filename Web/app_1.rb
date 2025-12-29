# frozen_string_literal: true
# encoding: utf-8

require 'sinatra' # sinatra it's the ruby's framework that we used for treat web projects
require 'date'

# GET is used to retrieve data from the server. It usually shows pages or information and sends parameters in the URL.
# It is safe, can be bookmarked, and does not change anything on the server. In Sinatra, get '/' do ... end responds
# when the user visits a URL, like showing a form or a page.
get '/' do
  erb :index
end

# POST is used to send data to the server for processing. It usually handles form submissions, file uploads, or any
# action that changes something on the server. The data is sent in the request body, not in the URL, and it cannot be
# bookmarked. In Sinatra, post '/hello' do ... end receives the form data, processes it, and returns a result page,
# like calculating age and showing a message.
post '/hello' do
  name = params[:name] # gets the value entered in the "name" field
  birth_date = Date.parse(params[:birth]) # gets the value from the "birth" field

  today = Date.today
  age = today.year - birth_date.year
  age -= 1 if today < birth_date.next_year(age)

  major = age >= 18

  @name = name
  @age = age
  @major = major

  erb :hello
end

# ---> BMI CALCULATOR EXERCISE <---
post '/bmi' do
  name = params[:user_name]
  weight = Float(params[:weight])
  height = Float(params[:height])

  bmi = weight / (height**2)

  classification =
    if bmi <= 18.4
      "underweight"
    elsif bmi <=  24.9
      "normal"
    else
      "overweight"
    end

  @u_name = name
  @weight = weight
  @height = height
  @bmi = bmi.round(2) # round the cipher to 2 decimals
  @class = classification

  erb :bmi_index
end