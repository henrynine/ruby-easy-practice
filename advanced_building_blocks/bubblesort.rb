def bubblesort list
  (list.length-1).downto(0) do |i|
    is_sorted = true
    0.upto(i-1) do |c|
      if list[c] > list[c+1]
        list[c], list[c+1] = list[c+1], list[c]
        is_sorted = false
      end
    end
    return list if is_sorted
  end
  list
end

def bubble_sort_by(list, &b)
  (list.length-1).downto(0) do |i|
    is_sorted = true
    0.upto(i-1) do |c|
      if b.call(list[c], list[c+1]) > 1
        list[c], list[c+1] = list[c+1], list[c]
        is_sorted = false
      end
    end
    return list if is_sorted
  end
  list
end
#puts bubblesort([4,3,78,2,0,2])

x = bubble_sort_by(["hi","hello","hey"]) do |left,right|
  left.length - right.length
end
puts x
