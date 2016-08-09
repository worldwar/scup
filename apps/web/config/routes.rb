# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }
get '/agreements/greeting/:id', to: 'agreements#greeting'
get '/agreements', to: 'agreements#index'
post '/agreements', to: 'agreements#create'
get '/agreements/new', to: 'agreements#new'
get '/site/:url', url: /.*/, to: 'site#handle'
post '/site/:url', url: /.*/, to: 'site#handle'