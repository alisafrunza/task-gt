class MergeSort
  class << self
    def sort(array)
      return array if array.size == 1

      middle = array.size / 2
      left = array[0...middle]
      right = array[middle..-1]

      merge(sort(left), sort(right))
    end

    private

    def merge(left, right)
      sorted = []

      until left.empty? || right.empty?
        sorted << if shift_left?(left[0], right[0])
                    left.shift
                  else
                    right.shift
                  end
      end

      sorted.concat(left).concat(right)
    end

    def shift_left?(left, right)
      weight(left) < weight(right) ||
        (
          weight(left) == weight(right) &&
          left < right
        )
    end

    def weight(string)
      string.split("").map(&:to_i).inject(0, :+)
    end
  end
end
