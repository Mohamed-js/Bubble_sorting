# frozen_string_literal: true

def test_results
  test_number = 0
  until test_number == 1000
    array_length = Random.rand(20)
    arr = []
    until array_length.zero?
      arr += [Random.rand(101)]
      array_length -= 1
    end
    arr = sort_with_bubbles(arr)
    unless arr == arr.sort
      raise 'BADLY SORTED! ' + arr.to_s + ' should be ' + arr.sort.tos + ', loop ' + testnumber.to_s
    end

    puts arr.to_s
    test_number += 1
  end
end

def sort_with_bubbles(arr)
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

test_results
