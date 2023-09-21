class IncreasingDecreasingNumbers
  def self.increasing_number?(num)
    num.to_s.chars.sort.join('') == num.to_s
  end

  def self.decreasing_number?(num)
    num.to_s.chars.sort.reverse.join('') == num.to_s
  end

  def self.count_numbers_up_to_power(power)
    if power == 0
      return 1
    elsif power == 1
      return 10
    elsif power == 2
      return 100
    end

    total_count = 100

    i = 101
    d = 100
    while i <= 10 ** power

      if i > (d * 10)
        d *= 10
      end
      if decreasing_number?(i)
        num = (i / 10) % 10 + 1
        total_count += num
        i += num
      elsif increasing_number?(i)
        num = (10 - (i % 10)).abs
        total_count += num
        i += num
      else
        i += 1
      end
    end
    total_count
    # recursive(101, 100, 10 ** power)
  end

  def self.recursive(current, sum, digits)
    return sum if current > digits
    if decreasing_number?(current)
      num = (current / 10) % 10 + 1
      return recursive(current + num, sum + num, digits)
    elsif increasing_number?(current)
      num = 10 - (current % 10)
      return recursive(current + num, sum + num, digits)
    end
    return recursive(current + 1, sum, digits)
  end
end

# Example usage:

puts IncreasingDecreasingNumbers.count_numbers_up_to_power(1)

puts IncreasingDecreasingNumbers.count_numbers_up_to_power(2)

puts IncreasingDecreasingNumbers.count_numbers_up_to_power(3)

puts IncreasingDecreasingNumbers.count_numbers_up_to_power(4)

puts IncreasingDecreasingNumbers.count_numbers_up_to_power(5)

puts IncreasingDecreasingNumbers.count_numbers_up_to_power(6)
