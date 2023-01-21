# bubble_sort.rb

def bubble_sort(numbers)

  sorted = false
  max_index = numbers.length

  while not sorted do
    sorted = true
    max_index -= 1
    max_index.times do |index|
      if numbers[index] > numbers[index + 1]
        numbers[index], numbers[index + 1] = numbers[index + 1], numbers[index]
        sorted = false
      end
    end
  end

  numbers
end
puts bubble_sort([4,3,78,2,0,2])
