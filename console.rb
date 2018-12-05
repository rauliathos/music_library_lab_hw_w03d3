require_relative('models/artist')
require_relative('models/album')
require('pry')

artist1 = Artist.new({'name' => 'Tupac'})
artist1.save

album1 = Album.new({'title' => 'All eyez on me',
      'genre' => 'rap', 'artist_id' => artist1.id})
album1.save

# p Artist.all

p Album.all
# binding.pry
nil
