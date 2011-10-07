require 'rack'
require 'spire'
require 'rack/rewrite'

path = File.expand_path(__FILE__)
path["config.ru"] = "app"

use Rack::Static, :urls => ["/public"]

use Rack::Rewrite do
  rewrite '/favicon.ico', '/public/favicon.ico'
end

run Spire::Router.new(path, {
  "default" => "index#index", # the default route!
  "/index" => "index#index",
})
