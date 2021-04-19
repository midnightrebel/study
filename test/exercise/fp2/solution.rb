module Exercise
  module Fp2
    class MyArray < Array
      # Использовать стандартные функции массива для решения задач нельзя.
      # Использовать свои написанные функции для реализации следующих - можно.

      # Написать свою функцию my_each
      def my_each; 
        for item in self
          yield item
        end
      end
      # Написать свою функцию my_map
      def my_map; 
        array = MyArray.new
        my_each (|el| array << yield(el))
      end

      # Написать свою функцию my_compact
      def my_compact; 
        array = MyArray.new
        my_each (|el| array << el if )
      end

      # Написать свою функцию my_reduce
      def my_reduce; end
    end
  end
end
