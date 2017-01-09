module Enumerable
  def my_each
    i = 0
    while i < self.size
      yield(self[i])
      i+=1
    end
    self
  end

  def my_each_with_index
    i = 0
    i = 0
    while i < self.size
      yield(self[i], i)
      i+=1
    end
    self
  end

  def my_select(&filter)
    a = []
    self.my_each do |item|
      if filter.call(item)
        yield(item)
        a << item
      end
    end
    a
  end

  def my_all?
  end

  def my_any?
  end

  def my_none?
  end

  def my_count
  end

  def my_map
  end

  def my_inject
  end



end
