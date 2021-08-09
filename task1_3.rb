module Enumerable
	def my_select
		result = []
		self.each do |item|
			result << item if yield(item)
		end
		result
	end

	def my_map
		result = []
		self.each do |item|
			result << yield(item)
		end
		result
	end
	
	def my_reduce(result = nil)
		self.each do |item|
			result = result.nil? ? item : yield(result, item)
		end
		result
	end
end

p [1, 2, 3, 4, 5].my_select {|i| i.odd?}
p (1..5).my_map {|i| i + 1}
p [1, 2, 3, 4, 5].my_reduce {|m, i| m + i}
