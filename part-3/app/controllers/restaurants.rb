get '/restaurants' do
  @restaurants = Restaurant.all
  erb :"restaurants/index"
end

get '/restaurants/new' do
  authenticate!
  @restaurant = Restaurant.new
  erb :"restaurants/new"
end

post '/restaurants' do
  authenticate!

  @restaurant = Restaurant.new(params[:restaurant])
  @restaurant.owner = current_user

  if @restaurant.save
    redirect "/restaurants/#{@restaurant.id}"
  else
    erb :"restaurants/new"
  end
end

get '/restaurants/:id/edit' do
  @restaurant = Restaurant.find_by(id: params[:id])

  redirect "/not_authorized" if current_user != @restaurant.owner

  erb :"restaurants/edit"
end

put '/restaurants/:id' do
  @restaurant = Restaurant.find_by(id: params[:id])

  if @restaurant.update(params[:restaurant])
    redirect "/restaurants/#{@restaurant.id}"
  else
    erb :"restaurants/edit"
  end
end

delete '/restaurants/:id' do
  @restaurant = Restaurant.find_by(id: params[:id])

  redirect "/not_authorized" if current_user != @restaurant.owner

  @restaurant.destroy
  redirect "/restaurants"
end

get '/restaurants/:id' do
  @restaurant = Restaurant.find_by(id: params[:id])
  @review = Review.new

  if params[:new_review]
    @new_review = true
  end

  erb :"restaurants/show"
end

post '/restaurants/:id/reviews' do
  authenticate!

  @restaurant = Restaurant.find_by(id: params[:id])

  @review = Review.new(params[:review])
  @review.author = current_user
  @review.restaurant = @restaurant

  if @review.save
    redirect "/restaurants/#{@restaurant.id}?new_review=true"
  else
    erb :"restaurants/show"
  end
end
