namespace :db do
  desc "Clear the db and fill with excellent sample data"
  task :populate => :environment do
    require 'populator'
    require 'faker'

    #code will go here
    [Artist, Song].each(&:destroy_all)

    #Add Fake data to those tables
    Genre.all.each do |genre|
      #Create artists inside that genre
      Artist.populate 5..10 do |artist|
        # Set the artist name and genre id
        artist.name = Faker::Name.first_name
        artist.genre_id = genre.id


        Song.populate 5..10 do |song|
          # Set the name and artist id
          song.name = Faker::Company.catch_phrase
          song.artist_id = artist.id
        end
      end

    end
    puts "Booya! Done populating!"
  end

end
