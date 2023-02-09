module MyEnumerable
  def all?(&block)
    each { |n| return false unless block.call(n) }
    true
  end
end
