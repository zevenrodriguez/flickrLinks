require 'rubygems'
require 'flickraw'

FlickRaw.api_key="efd83f8db9c1205cee48b06350b8a9bb"
FlickRaw.shared_secret="fbebd1cf5eea2177"

flickrId = '52218311@N07'
puts "Your user ID is #{flickrId}"

#user = flickr.photos.search(:user_id => flickrId)

photoSet = flickr.photosets.getList(:user_id => flickrId)



#puts photoSet.length

photoSet.each do |p|

#puts p.id

puts "***********"

imageSet = flickr.photosets.getPhotos(:photoset_id => p.id)


#puts imageSet.photo.length
#puts imageSet.photo[0].title

imageSet.photo.each do |i|

	#puts i.id
	
	square_url = FlickRaw.url_s(i)
    url = FlickRaw.url_b(i)

	
  #puts "Square  #{square_url}"
  puts "url  #{url}"

end


end



=begin
user.each do |p|
  info = flickr.photos.getInfo(:photo_id => p.id) # retrieve additional details
  # p info # uncomment to see other details

  title = info.title
  square_url = FlickRaw.url_s(info)
  original_url = FlickRaw.url_o(info)
  #taken = info.dates.taken
  #views = info.views
  #tags = info.tags.map {|t| t.raw}

  puts "Photo #{title}"
  puts "Square  #{square_url}"
  puts "orig  #{original_url}"
  
  #puts "was taken on #{taken}, see it on #{square_url}"
end
=end
