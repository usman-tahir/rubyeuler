start_time = Time.new
smallest_num = 9699690

until smallest_num % 20 == 0 && smallest_num % 19 == 0 && smallest_num % 18 == 0 && smallest_num % 17 == 0 && smallest_num % 16 == 0 && smallest_num % 15 == 0 && smallest_num % 14 == 0 && smallest_num % 13 == 0 && smallest_num % 12 == 0 && smallest_num % 11 == 0
	smallest_num = smallest_num + 9699690
end
	
puts smallest_num
printf("Run time %.4f s\n", Time.new - start_time)