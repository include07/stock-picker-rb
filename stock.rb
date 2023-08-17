def stock_picker(prices) 
  this_iteration = Hash.new
  prices.each_with_index do |i, i_index|
    holder = prices.slice(i_index+1,prices.length-(i_index+1))
    holder.each_with_index do |j,j_index|
      this_iteration[[i_index,j_index+i_index+1]]=j-i
    end
  end
  return this_iteration.max_by{|key, value| value}
end
puts stock_picker([17,3,6,9,15,8,6,1,10])
