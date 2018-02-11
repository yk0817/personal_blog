require './common.rb'

disc = Disc.create(name: 'disc_test', info: 'disc_info')
disc.reviews.create(review_content: 'disc_review')

live = Live.create(name: 'live_test', info: 'live_info')
live.reviews.create(review_content: 'live_review')

artist = Artist.create(name: 'artist_test', info: 'artist_info')
artist.reviews.create(review_content: 'artist_review')