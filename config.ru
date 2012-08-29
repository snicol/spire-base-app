require 'spire'

use Rack::Static, :urls => ["/public"]

map = Spire::Map.new

# Default route is now just '/'
map.route :url => "/", :to => {:controller => "index", :action => "index"}
map.route :url => "/index", :to => {:controller => "index", :action => "index"}

# If nothing is found, it will try and match controller and action based on URL
map.auto = true

run Spire::Router.new(map)