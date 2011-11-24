class FizzBuzz
  def initialize(max_num, min_num = 1)
    @max_num = max_num
    @min_num = min_num
  end

  def output
    txt = ""
    (@min_num..@max_num).each do |num|
      txt += "#{self.convert(num)} "
    end

    txt.strip!
  end

  def convert(num)
    txt = ""
    if num % 3 == 0
      txt += "fizz"
    end
    if num % 5 == 0
      txt += "buzz"
    end

    return txt unless txt.empty?
    num
  end
end