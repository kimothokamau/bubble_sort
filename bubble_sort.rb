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

array = %w[hi hello hey]
array_digits = [5, 6, 3, 7, 3, 1, 9, 1]

# TESTING METHOD 1 - bubble_sort
p bubble_sort(array_digits)
# TESTING METHOD 2 - bubble_sort_by for words
p bubble_sort_by(array) { |left, right| left.length - right.length }

# TESTING METHOD 2 - bubble_sort_by for digits
p bubble_sort_by(array_digits) { |left, right| left - right }
