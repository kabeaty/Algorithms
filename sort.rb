module Sort

  def self.selection_sort(array)
    if array.empty?
      return []
    end

    if array.size === 1
      return array
    end

    for x in 0..array.size - 1
      for i in x..array.size - 1
        start = array[x]
        current = array[i]
      if current < start
        array[x] = current
        array[i] = start
      end
      end
    end
    array
    end

# The assumption is that this merge method takes in two already sorted arrays.
    def self.merge(array1, array2)
      result = []
      i1 = 0
      i2 = 0

      if array1.empty?
        return array2
      elsif array2.empty?
        return array1
      end

      while i1 < array1.size && i2 < array2.size
        if array1[i1] <= array2[i2]
          result << array1[i1]
          i1 += 1
        else
          result << array2[i2]
          i2 += 1
        end
      end
      result += array1[i1..-1]
      result += array2[i2..-1]
    end

    def self.mergesort(array)

      if array.length <= 1
        return array
      else
        first_half = []
        second_half = []
        first_half.concat(array[0...array.size / 2])
        second_half.concat(array[array.size / 2..-1])
        a = mergesort(first_half)
        b = mergesort(second_half)
        merge(a, b)
      end

    end

end








