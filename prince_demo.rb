require 'princely'
require 'sinatra/base'

class PrinceDemo < Sinatra::Base
  get '/' do
    content_type 'application/pdf'
    princely = Princely.new
    princely.pdf_from_string(File.read('index.html'))
  end
end
