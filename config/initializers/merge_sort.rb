# require 'pry'
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
      puts 'stuff'
    end

    # ================================
    # * Vending machine * 15 minutes * failed TopTal interview
    # ================================
    #
    #
    # A vending machine has the following denominations:
    # 1c, 5c, 10c, 25c, 50c, and $1.
    # Your task is to write a program that will be used in a
    # vending machine to return change.
    # Assume that the vending machine will always want to return
    # the least number of coins or notes.
    # Devise a function getChange(M, P)
    # where M is how much money was inserted into
    # the machine and P the price of
    # the item selected, that returns an
    # array of integers representing
    # the number of each denomination
    # to return.
    #
    # Example:
    # getChange(5, 0.99) should return [1,0,0,0,0,4]
  #
  #
  #   def self.get_change(money, price)
  #     coins = [100,50,25,10,5,1]
  #     cents = (price*100)
  #     remainder = money*100-cents
  #     returned_coins = Hash.new
  #     coins.each do |coin|
  #       loop do
  #         puts coin
  #         puts remainder
  #         if remainder%coin == 0
  #           if !returned_coins[coin]
  #             returned_coins[coin] = 1
  #             remainder -= coin
  #             puts remainder
  #           else
  #             returned_coins[coin] += 1
  #             remainder -= coin
  #           end
  #         else
  #
  #           break
  #         end
  #       end
  #     end
  #     values = returned_coins.map { |k,v| v}
  #     return values.reverse
  #
  #   end
  end

end
