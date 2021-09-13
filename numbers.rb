require "./merge_sort"

class Numbers
  class << self
    def sort(string)
      array = string.split(" ")

      sorted_array = MergeSort.sort(array)

      sorted_array.join(" ")
    end
  end
end
