require 'sinatra'

# Adds gzip compression to requests
use Rack::Deflater

# Default router
get '/' do
	# Loads the view file
	erb :'index' 
end

not_found do
	erb :'error' 
end 

error do
	erb :'error' 
end
