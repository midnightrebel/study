module Exercise
  module Fp
    class << self
      # Обратиться к параметрам фильма можно так:
      # film["name"], film["rating_kinopoisk"], film["rating_imdb"],
      # film["genres"], film["year"], film["access_level"], film["country"]
      def rating(_array)
        sorted = _array.sort { |row| 
                        row ["rating_kinopoisk" ].to_f > 0 && 
                        row ["country"] != nil && 
                        row ["country"].split(",").length > 1
                        } 
      result = sorted.reduce(0) {|sum,row|sum + row["rating_kinopoisk"].to_f} / sorted.count
      return result
      end
      array = CSV.readlines('./test/fixtures/films.csv', headers: true)
      result = Fp.rating(array)
      puts result
      
      def chars_count(_films, _threshold)
        0
      end
    end
  end
end
