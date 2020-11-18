class LinebotController < ApplicationController
  require 'line/bot'
  def callback
    body = request.body.read
  end
  
end
