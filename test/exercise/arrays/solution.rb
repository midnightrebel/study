module Exercise
  module Arrays
    class << self
      def replacemax(array)
        array = Array.new(array)
        i = 0
        max = array[i]
        while i < array.length do
          if (max < array[i])
            max = array[i]
          end
          if(array[i] >= 0)
            array[i] = max
            array[0] = max
            array[1] = max
          end
          i += 1
        end
        return array
      end
     
      def search(_array, _query)
        right = _array.length - 1
        left = 0
        middle = _array.length / 2
        while(_array[middle] != _query && left < right)
          if _array[middle] < _query
            left = middle + 1
          else
            right = middle - 1
          end
          middle = (right + left) / 2
        end
        if _array[middle] == _query
          return middle
        end
        if left > right
          middle = -1
          return middle
        end
      end
    end
  end
end
