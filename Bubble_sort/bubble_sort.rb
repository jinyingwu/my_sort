arr = [6, 5, 3, 1, 8, 7, 2, 4]


sorted = false

until sorted == true
  sorted = true

  arr.each_with_index do |el, idx|
    if idx < arr.length - 1
      if el > arr[idx + 1]
        arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
        sorted = false
      end
    end
  end
end


p arr
