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
        elsif array2[i2] <= array1[i1]
          result << array2[i2]
          i2 += 1
        end
      end

      if i1 < array1.size
        while i1 < array1.size
          result << array1[i1]
          i1 +=1
        end
      elsif i2 < array2.size
        while i2 < array2.size
          result << array2[i2]
          i2 += 1
        end
      end
      result
    end

end


