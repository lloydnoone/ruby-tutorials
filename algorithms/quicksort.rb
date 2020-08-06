class Array
  def quicksort
    return [] if empty?

    # pull out a random element
    pivot = delete_at(rand(size))
    # get elements to the left and right
    left, right = partition(&pivot.method(:>))

    return *left.quicksort, pivot, *right.quicksort
  end
end

arr = [34, 2, 1, 5, 3]
p arr.quicksort