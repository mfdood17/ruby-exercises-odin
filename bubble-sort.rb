def bubble_sort(array)
  arr_length = array.length 
  sorted = false
  while arr_length > 1 || sorted != true
    sorted = true
    for i in 0..arr_length-2 do
      if array[i]>array[i+1]
        temp = array[i]
        array[i] = array [i+1]
        array[i+1] = temp
        sorted = false
      end
    end 
    arr_length -= 1
  end
  array
end