# frozen_string_literal: true

def bubble_sort(arr)
  swapped = true
  while swapped
    index = 0
    swapped = false
    while index < arr.length - 1
      if arr[index] > arr[index + 1]
        arr[index], arr[index + 1] = arr[index + 1], arr[index]
        swapped = true
      end
      index += 1
    end
  end
  arr
end

def bubble_sort_by(arr)
  return bubble_sort(arr) unless block_given?

  swapped = true
  while swapped
    index = 0
    swapped = false
    while index < arr.length - 1
      if (yield arr[index], arr[index + 1]).positive?
        arr[index], arr[index + 1] = arr[index + 1], arr[index]
        swapped = true
      end
      index += 1
    end
  end
  arr
end

# arr = [5, 4, 3, 2, 1]
# print bubble_sort(arr)
# print bubble_sort_by(arr) { |x, y| y - x }
