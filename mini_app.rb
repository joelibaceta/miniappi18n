require 'sinatra'
require 'i18n'

class MiniApp < Sinatra::Base
   
  I18n.load_path = Dir["locales/*"]
  
  get '/hello/:locale' do
    I18n.t 'hello', locale: params[:locale]
  end
  
  post '/hello/:locale' do
    "#{I18n.t('hello', locale: params[:locale])}  #{params[:name].to_s}"
  end
  
end
 