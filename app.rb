require 'bundler/setup'
Bundler.require :default

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @users = User.all
  @user = User.find(params["id"])

  erb(:index)
end

post('/users/add_user') do
  username = params["new_user"]
  @user = User.create({ :username => username })


  redirect '/'
end

get('/users/:id/pets') do
  @user = User.find(params["id"])
  @pets = @user.pets

  erb(:userpets)
end
