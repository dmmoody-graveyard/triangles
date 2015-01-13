require('sinatra')
require('sinatra/reloader')
also_reload('./lib/**/*.rb')
require('./lib/triangles')

get('/') do
  erb(:forms)
end

get('/result') do
  @side1 = params.fetch('side1')
  @side2 = params.fetch('side2')
  @side3 = params.fetch('side3')
  @some_triangle = Triangles.new(@side1, @side2, @side3)
  erb(:results)
end
