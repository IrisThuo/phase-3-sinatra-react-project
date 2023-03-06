class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/movies" do
   movies = Movie.all
   movies.to_json
  end

  get '/movies/:id' do
    movies = Movie.find(params[:id])
    movies.to_json
  end

  get '/search/:term' do
    term = params[:term]
    movie = Movie.where(year: term.to_i) ||  Movie.find_by(title: term)
    if movie
      return movie.to_json    
    else
      error_message = {error: "Could not find movie that matches search term"} 
      return error_message.to_json     
    end
  end 

  get '/movies/:year' do
    movies = Movie.find_by(params[:year])
    movies.to_json
  end

  post '/movies' do 
    movies = Movie.create(
      title: params[:title],
      poster: params[:poster],
      description: params[:description],
      year: params[:year],
      runtime: params[:runtime]
    )
    movies.to_json
  end

  patch '/movies/:id' do
    movies = Movie.find(params[:id])
    movies.update(
      title: params[:title],
      poster: params[:poster],
      description: params[:description],
      year: params[:year],
      runtime: params[:runtime]
    )
    movies.to_json
  end

  delete '/movies/:id' do 
    movies = Movie.find(params[:id])
    movies.destroy
    movies.to_json
  end


  get "/users" do
    users = User.all
    users.to_json
  end

  post "/users" do
    users = User.create(
      username: params[:username],
      password: params[:password]
    )
    users.to_json
  end

  delete "/users/:id" do
    users = User.find(params[:id])
    users.destroy
    users.to_json
  end


end
