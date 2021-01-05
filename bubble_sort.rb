def bubble_sort(arr)
  index = 0
  switched = false
  while index < arr.length
    return arr if index + 1 == arr.length

    if arr[index] > arr[index + 1]
      arr.insert(index, arr[index + 1])
      arr.delete_at(index + 2)
      switched = true
    end
    index += 1
    if switched
      index = 0
      switched = false
    end
  end
  arr
end

def bubble_sort_by(arr)
  unless block_given?
    raise 'ERROR'
  end
  index = 0
  switched = false
  while index < arr.length
    return arr if index + 1 == arr.length

    if yield(arr[index], arr[index +1]).positive?
      arr.insert(index, arr[index + 1])
      arr.delete_at(index + 2)
      switched = true
    end
    index += 1
    if switched
      index = 0
      switched = false
    end
  end
  arr
end  


bubble_sort_by(["hi","hello","hey"]){|left,right| left.length - right.length }
