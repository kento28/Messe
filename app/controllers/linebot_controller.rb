class LinebotController < ApplicationController
  require 'line/bot'
  def callback
    body = request.body.read
    unless client.validate_signature(body, signature)
      error 400 do 'Bad Request' 
      end
    when Line::Bot::Event::Message
      
    end
  end
  
end
