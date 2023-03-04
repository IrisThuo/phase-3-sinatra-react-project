class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/movies" do
   movies = Movie.all
   movies.to_json
  end

  get '/movies/:title' do
    movies = Movie.find_by(params[:title])
    movies.to_json
  end

  get '/movies/:year' do
    movies = Movie.find_by(params[:year])
    movies.to_json
  end

  


end
