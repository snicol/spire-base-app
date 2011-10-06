require 'rack'
require 'spire'

path = File.expand_path(__FILE__)
path["config.ru"] = "app"

use Rack::Static, :urls => ["/public"]

run Spire::Router.new(path, {
  "default" => "index#index", # the default route!
  "/index" => "index#index",
})
