get '/users/new' do
  @user = User.new
  erb :"users/new"
end

post '/users' do
  @user = User.new(params[:user])

  if @user.save
    redirect '/login'
  else
    erb :"users/new"
  end
end

get '/users/:id' do
  redirect "/not_authorized" if current_user != User.find_by(id: params[:id])
  @user = User.find_by(id: params[:id])
  erb :"users/show"
end
