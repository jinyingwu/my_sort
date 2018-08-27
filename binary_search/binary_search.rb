# The binary search algorithm begins by comparing the target value to the value
# of the middle element of the sorted array. If the target value is equal to
# the middle element's value, then the position is returned and the search is
# finished. If the target value is less than the middle element's value, then
# the search continues on the lower half of the array; or if the target value
# is greater than the middle element's value, then the search continues on the
# upper half of the array. This process continues, eliminating half of the
# elements, and comparing the target value to the value of the middle element
# of the remaining elements - until the target value is either found
# (and its associated element position is returned), or until the entire array
# has been searched (and "not found" is returned).

def binary_search(arr, target, idx_puls = 0)
  mid = arr.length / 2
  return mid + idx_puls if arr[mid] == target
  return nil if arr.length == 1

  if arr[mid] < target
    binary_search(arr[(mid + 1)..-1], target, mid + 1)
  else
    binary_search(arr[0...mid], target, idx_puls)
  end

end


p binary_search([1, 2, 3], 1) # => 0
p binary_search([2, 3, 4, 5], 3) # => 1
p binary_search([2, 4, 6, 8, 10], 6) # => 2
p binary_search([1, 3, 4, 5, 9], 5) # => 3
p binary_search([1, 2, 3, 4, 5, 6], 6) # => 5
p binary_search([1, 2, 3, 4, 5, 6], 0) # => nil
p binary_search([1, 2, 3, 4, 5, 7], 6) # => nil
