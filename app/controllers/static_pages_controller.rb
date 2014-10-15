class StaticPagesController < ApplicationController

  require 'flickraw'

  FlickRaw.api_key = ENV['FLICKR_API_KEY']
  FlickRaw.shared_secret= ENV['FLICKR_SHARED_SECRET']

  def home
    @flickr_id = params[:flickr_id]
  end
end
