class MusicLibraryController

  def initialize(path="./db/mp3s")
    MusicImporter.new(path).import
  end

  def call
    while input != "exit"
    puts "Welcome to your music library!"
    puts  "To list all of your songs, enter 'list songs'."
    puts  "To list all of the artists in your library, enter 'list artists'."
    puts  "To list all of the genres in your library, enter 'list genres'."
    puts "To list all of the songs by a particular artist, enter 'list artist'."
    puts  "To list all of the songs of a particular genre, enter 'list genre'."
    puts  "To play a song, enter 'play song'."
    puts  "To quit, type 'exit'."
    puts  "What would you like to do?"
    input = gets.strip
  end
  end

  def list_songs
      Song.all.sort_by{|song| song.name}.each.with_index(1) {|song,index|
        puts "#{index}. #{song.artist.name} - #{song.name} - #{song.genre.name}"
    }

  end

  def list_artist
      Artist.all.sort_by { |artist| artist.name }.each.with_index(1) { |artist,index|
      puts "#{index}. #{artist.name}"
    }

  end

  def list_genres
      Genre.all.sort_by { |genre| genre.name }.each.with_index(1) { |genre,index|
      puts "#{index}. #{genre.name}"
    }

  end

  def list_songs_by_artist
     puts "Please enter the name of an artist:"
     input = gets.strip
     if artist = Artist.find_by_name(input)
       artist.songs.sort_by {|song| song.name }.each.with_index(1) { |song,idx|
       puts "#{idx}. #{song.name} - #{song.genre}"
     }
     end
  end

  def list_songs_by_genre
     puts "Please enter the name of a genre:"
     input = gets.strip
     if genre = Artist.find_by_name(input)
       genre.songs.sort_by {|song| song.name }.each.with_index(1) { |song,idx|
       puts "#{idx}. #{song.artist.name} - #{song.name}"
     }
     end
  end
genre
end
