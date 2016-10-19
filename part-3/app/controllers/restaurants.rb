get '/restaurants/new' do
  authenticate!
  erb :"restaurants/new"
end

post '/restaurants' do

end
