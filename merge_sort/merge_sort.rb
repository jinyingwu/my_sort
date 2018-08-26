require "byebug"
arr = [8, 2, 3, 5, 1, 9, 9, 7, 5, 0]

def merge_sort(arr)
  return arr if arr.length == 1
  return nil if arr.length == []

  result = []
  mid = arr.length / 2
  left_side = arr[0...mid]
  right_side = arr[mid..-1]

  # byebug

  result += merge(merge_sort(left_side), merge_sort(right_side))

end

def merge(left_arr, right_arr)
  result = []
  # byebug
  while left_arr != [] && right_arr != []
    if left_arr.first < right_arr.first
      result << left_arr.pop
    else
      result << right_arr.pop
    end
  end

  result = left_arr + right_arr
end

p merge_sort(arr)
