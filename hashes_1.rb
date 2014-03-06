class MyHash

  def initialize
    @array = Array.new(64) { Array.new }
  end

  def find_index(key)
    key.hash % @array.size
  end

  def [](key)
    index = key.hash % @array.size

    pairs = @array[index]

    pairs.each do |pair|
      if pair.first == key
        return pair.last
      end
    end
    nil
  end

  def []=(key, value)
    index = key.hash % 64
    pairs = @arrays[index]
    updated = false
    pairs.each do |pair|
      if pair.first == key
        pair[1] = value
        updated = true
      end
    end

    if !updated
      @array[index] << [key, value]
      @size += 1
      if @size * 2 > @array.size
        rehash(@array.size * 2)
      end
    end

  end

  def rehash(new_size)
    old_array = @array
    @array = Array.new(new_size) { Array.new }
    old_array.each do |pairs|
      pairs.each do |pair|
        key = pair[0]
        value = pair[1]
        self[key] = value unless value.nil?
      end
    end
  end

end











































