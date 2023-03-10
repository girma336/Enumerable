module MyEnumerable
  def all?(&block)
    each { |n| return false unless block.call(n) }
    true
  end

  def any?(&block)
    each { |n| return true if block.call(n) }
    false
  end

  def filter(&block)
    new_array = []
    each { |n| new_array << n if block.call(n) }
    new_array
  end
end
