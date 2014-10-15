module FlickrHelper  



  def user_photos(user_id, photo_count = 12)
    flickr.photos.search(:user_id => user_id)
  end
  
  def render_flickr_sidebar_widget(user_id, photo_count = 12, columns = 2)
    begin
      photos = user_photos(user_id, photo_count)
      render :partial => '/flickr/display', :locals => { :photos => photos }
    rescue 
      render :partial => '/flickr/unavailable'
    end
  end
end