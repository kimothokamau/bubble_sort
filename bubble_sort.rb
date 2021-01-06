array = [5, 6, 3, 7, 3, 1, 9, 1]
def bubble_sort(array)
  n = array.length - 1
  swapped = true
  while swapped
    swapped = false
    n.times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
  end
  array
end
bubble_sort(array)

def bubble_sort_by(arr)
  puts arr if arr.length <= 1
  n = arr.length - 1

  swapped = true
  while swapped
    swapped = false
    n.times do |i|
      if yield(arr[i], arr[i + 1]).positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
  end
  arr
end

bubble_sort_by(['hi', 'hello', 'hey']) do |left, right|
  left.length - right.length
end

bubble_sort_by([5, 6, 3, 7, 3, 1, 9, 1]) do |left, right|
  left - right
end
