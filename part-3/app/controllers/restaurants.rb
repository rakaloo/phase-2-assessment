get '/restaurants/new' do
  authenticate!
  @restaurant = Restaurant.new
  erb :"restaurants/new"
end

post '/restaurants' do
  @restaurant = Restaurant.new(params[:restaurant])
  @restaurant.owner = current_user

  if @restaurant.save
    redirect "/restaurants/#{@restaurant.id}"
  else
    erb :"restaurants/new"
  end
end

post 'restaurants/:id' do

end
