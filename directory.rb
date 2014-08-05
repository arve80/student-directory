
students = [
				{ name: "Ruth Earle", cohort: :august},
				{ name: "Andy Gates", cohort: :august},
				{ name: "Marc Singh", cohort: :august},
				{ name: "Faisal Aydarus", cohort: :august},
				{ name: "Ethel Ng", cohort: :august},
				{ name: "Kevin Daniels", cohort: :august},
				{ name: "Maya Driver", cohort: :august},
				{ name: "Leopold Kwok", cohort: :august},
				{ name: "James McNeil", cohort: :august},
				{ name: "Jerome Pratt", cohort: :august},
				{ name: "David Wickes", cohort: :august},
				{ name: "Javier Silverio", cohort: :august},
				{ name: "Elliot Lewis", cohort: :august},
				{ name: "Ben Tillett", cohort: :august},
				{ name: "Vincent Koch", cohort: :august},
				{ name: "Michelle Ballard", cohort: :august},
				{ name: "Nick Roberts", cohort: :august},
				{ name: "Tatiana Soukiassian", cohort: :august},
				{ name: "Mervé Silk", cohort: :august},
				{ name: "Lovis Schultze", cohort: :august},
				{ name: "Chris Oatley", cohort: :august},
				{ name: "Spike Lindsey", cohort: :august},
				{ name: "Henry Stanley", cohort: :august},
				{ name: "Albert Vallverdu", cohort: :august},
				]

$color = ["\e[0;31m","\e[0m"]
=begin

def print_header

	puts	"The students of my cohort at Makers Academy"
	puts	"==========================================="
end

def print_student(students)

	students.each do |student|

		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def print_footer(students)

	puts "Overall we have #{students.length} students"	

end

# Beginning program 

print_header

print_info(students)

print_footer(students)

=end

def input_students
	
	print "Please enter the names of the students \n"
	print "To finish, just hit return twice \n"

	#create and empty array
	students = []

	#get the first name
	name = gets.chomp

	#while the name is not empty, repeat this code
	while !name.empty? do

		students << {:name=> name,:cohort=> :august}

		print "Now we have #{students.length} students \n"

		#get another name from the user
		name = gets.chomp
	end

	#return students array
	students
end

def print_header

	print	"The students of my cohort at Makers Academy \n"
	print	"=========================================== \n"
end

def print_student(students)

	students.each_with_index do |(key),index|

		puts "#{$color[0]}#{index+1}#{$color[1]} #{key[:name]} (#{key[:cohort]} cohort) "
	
	end
end

def print_footer(students)

	puts "==========================================="
	puts "Overall we have #{students.length} students" 	

end

def search_student(students)

	puts "Tell me the letter?"

	letter = gets.chomp

	students.each do |student|

		each_letter = student[:name].slice(0)

		if each_letter === letter

			puts student[:name]

		elsif each_letter != letter

			puts "#{$color[0]}Sorry, There isn't a maker with the letter \"#{letter}\" #{$color[1]}";exit(0)
		end
	end
end

#students = input_students

print_header
print_student(students)
print_footer(students)

puts "Do you want to search a maker by letter?"

gets.chomp

search_student(students)



