class LinebotController < ApplicationController
  require 'line/bot'
  def callback
    body = request.body.read
    unless client.validate_signature(body, signature)
      error 400 do 'Bad Request' 
      end
    when Line::Bot::Event::Message
      case event.type
       when Line::Bot::Event::Message
        seed1 = select_word
        seed2 = select_word
        while seed1 == seed2
          seed2 = select_word
        end
        message = [{
          type: 'text'
          text: ""
        },{
          type: 'text',
          text:  
          text: "#{seed1} × #{seed2} !!"
        }]
    end
  end
  private
end
