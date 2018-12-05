require_relative('models/artist')
require_relative('models/album')
require('pry')

artist1 = Artist.new({'name' => 'Tupac'})

album1 = Album.new({'title' => 'All eyez on me',
      'genre' => 'rap'})
binding.pry
nil
