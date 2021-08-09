arr = [[[1, 2], 3], [4, 5, 6], [7, [8, 9]]]

def walk(array, &block)
 case array

 when Array

 array.each do |i|
  case i
  when Array
   i.each {|array| walk(array, &block)}
  when Integer
   block.call(i)
  end
 end

 when Integer
  block.call(array)
 end 
end

walk(arr) {|i| puts i}