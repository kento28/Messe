class LinebotController < ApplicationController
  require 'line/bot'
  def callback
    body = request.body.read
    signature = request.env['HTTP_X_LINE_SIGNATURE']

  end
end
