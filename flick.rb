require 'rubygems'
require 'flickraw'

FlickRaw.api_key="efd83f8db9c1205cee48b06350b8a9bb"
FlickRaw.shared_secret="fbebd1cf5eea2177"

user = flickr.people.findByUsername(:username => 'zevenwolf')

puts user.id


photoSet = flickr.photosets.getList(:user_id => user.id)

photoSet.each do |p|

puts "***********"

imageSet = flickr.photosets.getPhotos(:photoset_id => p.id)

imageSet.photo.each do |i|
	
	square_url = FlickRaw.url_s(i)
    url = FlickRaw.url_b(i)
    puts "url  #{url}"

end


end
