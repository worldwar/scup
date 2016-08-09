# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }
get '/agreements', to: 'agreements#index'
post '/agreements', to: 'agreements#create'
get '/agreements/new', to: 'agreements#new'
get '/site/:url', to: 'site#handle'
