require 'pry'
module MergeSort
  module ClassMethods
    def self.merge(left_sorted, right_sorted)
      puts "Merging!: [#{left_sorted.to_s}], [#{right_sorted.to_s}]"
      res = []
      l = 0
      r = 0

      loop do
        break if r >= right_sorted.length and l >= left_sorted.length

        if r >= right_sorted.length or (l < left_sorted.length and left_sorted[l] < right_sorted[r])
          res << left_sorted[l]
          l += 1
        else
          res << right_sorted[r]
          r += 1
        end
      end
      puts "result: #{res.to_s}"
      puts "###"
      return res
    end

    def self.sort(array_sliced)
      return array_sliced if array_sliced.length <= 1

      mid = array_sliced.length/2 - 1
      left_sorted = sort(array_sliced[0..mid])
      right_sorted = sort(array_sliced[mid+1..-1])
      return merge(left_sorted, right_sorted)
    end


    def self.other_thing
      # binding.pry
    end

  end

end
