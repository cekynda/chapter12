def fib(n)
	if n == 0 || n.negative?
		puts 'Введите другое число'
	else
		result = []
		first_num = 0
		second_num = 1
		result.push(first_num)
		(n).times do 
			first_num, second_num = second_num, first_num + second_num
			result << first_num
		end
		result.each do |i|
			yield(i)
		end
	end
end 
  
fib(12) {|i| print "#{i} "}