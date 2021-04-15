
module Exercise
  module Fp
    class << self
      def rating(_array)
        sorted = _array.select { |row| row["rating_kinopoisk"].to_f > 0 && 
          row["country"] != nil && 
          row["country"].split(',').length > 1 }
        result = sorted.reduce(0) { |sum, row| sum + row["rating_kinopoisk"].to_f} / sorted.count
        return result
      end
      
      def chars_count(_films, _threshold)
        result = _films.select {|row|
          row['rating_kinopoisk'].to_f > _threshold}.reduce(0) { |sum, row| sum + row['name'].count('и')}
        return result
      end
    end
  end
end
