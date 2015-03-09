require 'princely'
require 'sinatra/base'

class PrinceDemo < Sinatra::Base
  get '/' do
    content_type 'application/pdf'
    princely = Princely.new
    princely.pdf_from_string('<h1>PrinceXML</h1>')
  end
end
