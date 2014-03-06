8.
#The solution probably would slow down as you insert longer arrays since
#it has to compare each element in the array.
def max(array)
  array.inject { |x, y| y > x ? y : x }
end

9.
#The solution probably wouldn't slow down as you insert longer arrays
#because it can jump straight to the last element in the array and
#the index of that last element.
def middle_element(array)
  if array.length.even?
    x = array.last
    middle = array.index(x) / 2.0
    (array[middle] + array[middle + 1]) / 2.0
  else
    y = (array.last)
    middle = (array.index(y) / 2).ceil
    array[middle]
  end
end

10.
#The solution probably would slow down as you insert longer arrays
# because you have to go through and map for each element in each
#array.
def sum_arrays(array1, array2)
  array1.map { |num| num + array2[(array1.index(num))] }
end

#Algorithms Day 2

#This algorithm would be O(n squared) because you have to compare each
#with inject and then when you insert the smallest at 0, you'll have
#to move each over.
#Don't want to do .index because it has to go through each to get the
#index. Can also do eachWithIndex.
def swap_small(array)
  smallest = array.inject { |x, y| y < x ? y : x }
  array[array.index(smallest)] = array.first
  array.insert(0, smallest)
  return array
end

#This algorithm would be O(n squared)
def two_numbers(array, x)
  array.each do |num|
    array.each do |num2|
      if num + num2 == x
        return true
    end
  end
end
  return false
end

#This algorithm would be O(n cubed)
def three_numbers(array, x)
  array.each do |num|
    array.each do |num2|
      array.each do |num3|
        if num + num2 + num3 == x
          return true
        end
      end
    end
  end
  return false
end
















