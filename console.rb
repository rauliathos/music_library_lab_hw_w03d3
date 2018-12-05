require_relative('models/artist')
require_relative('models/album')
require('pry')

Album.delete_all
Artist.delete_all

artist1 = Artist.new({'name' => 'Tupac'})
artist1.save

album1 = Album.new({'title' => 'All eyez on me',
      'genre' => 'rap', 'artist_id' => artist1.id})
album1.save

album2 = Album.new({'title' => 'R U Still Down',
      'genre' => 'rap', 'artist_id' => artist1.id})
album2.save

p artist1.albums

# p Artist.show_all
#
# p Album.show_all
# binding.pry
nil
