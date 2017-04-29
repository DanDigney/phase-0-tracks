def practice_method
	z = "This is a practice method"
	puts z 
	y = z.reverse
	yield(y)
end

practice_method { |y| puts y }