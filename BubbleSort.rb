def test_results
    test_number = 0
    until test_number == 1000
      array_length = Random.rand(20)
      arr = Array.new
      until array_length == 0
        arr = arr + [Random.rand(101)]
        array_length -= 1
      end
      arr = sort_with_bubbles(arr)
      raise "BADLY SORTED! " + arr.to_s + " should be " + arr.sort.tos + ", loop " + testnumber.to_s unless arr == arr.sort
      puts arr.to_s
      test_number += 1
    end
end


def sort_with_bubbles(arr)
    index = 0
    switched = false
    while index < arr.length
      if index + 1 == arr.length
        return arr
      end
      if arr[index] > arr[index + 1]
        arr.insert(index, arr[index  + 1])
        arr.delete_at(index + 2)
        switched = true
      end
      index += 1
      if switched
        index = 0
        switched = false
      end
    end
    return arr
end
test_results



  