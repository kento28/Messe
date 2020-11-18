class LinebotController < ApplicationController
  require 'line/bot'
  def callback
    body = request.body.read
    unless client.
  end
  
end
