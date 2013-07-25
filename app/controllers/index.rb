get '/' do
  @events = Event.all
  erb :index
end

# get '/events/:id/' do
#   p params
#   @event = Event.find(params(:id)
#   erb :event_show
# end

# post '/events/show' do
#  @events = Event.all
#  erb :event_show
# end

post '/events/create' do
  @new_event=Event.create(params)
  @events = Event.all
  erb :index   
end

post '/events/delete' do
  Event.create(params)
  erb :index
end