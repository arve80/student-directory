
@students = []

$col_0 = "\e[0;31m" 
$col_1 = "\e[0m"



def add_student(name,cohort)
		
	@students << {name: name, cohort: cohort}

end

def show_students
	print_header
	print_student(@students)
	print_footer(@students)	
end

def input_students
	
	puts "Please enter the names of the students and cohort separated by \"comma\""
	puts "To finish, just hit return twice "

	#get the first name
	name = gets.chomp

		#while the name is not empty, repeat this code
	while !name.empty? do
		
		add_student(name, :August)

		puts "Now we have #{@students.length} students "

		#get another name from the user
		puts "Enter another name"
		name = gets.chomp

	end

	#return students array
	@students

end

def print_header

	puts	"The students of my cohort at Makers Academy"
	puts	"==========================================="
end

def print_student(students)

	stud_length = students.length

	count = 0

	while count < stud_length 

		puts "#{$col_0}Name:#{$col_1} #{students[count][:name].center(12)}"
		puts "#{$col_0}Cohort:#{$col_1} #{students[count][:cohort].to_s.center(8)}"
		puts "==================================================="

		count +=1
	end

=begin	

	students.each_with_index do |(key),index| # Add 'value' inside parenthesis if you wanna access it.

		puts "#{$color[0]}#{index+1}#{$color[1]} #{key[:name]} (#{key[:cohort]} cohort) "
	
	end
=end

end

def print_footer(students)

	puts "Overall we have #{students.length} students" 	

end


def interactive_menu

	loop do

		puts "1. Input the students"
		puts "2. Show the students"
		puts "9. Exit"

		selection = gets.chomp

		case selection

			when '1'
					@students = input_students

			when '2'
				show_students
			when '9'
				exit
			else
				puts "I don't know what you meant, try again"
			
		end
	end
end

interactive_menu

#students = input_students

#print_header
#print_student(students)
#print_footer(students)


=begin
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

$col_0 = "\e[0;31m" 
$col_1 = "\e[0m"

def set_user_details

	temp_arr = []

	puts "Which is your cohort or press enter for August?"
	cohort = gets.chomp 

	cohort = 'August' if cohort.length === 0

	return temp_arr << cohort 

end

def input_students
	
	puts "Please enter the names of the students and cohort separated by \"comma\""
	puts "To finish, just hit return twice "

	#create and empty array
	students = []

	#get the first name
	name = gets.chomp

	#while the name is not empty, repeat this code
	while !name.empty? do

		get_user_details = set_user_details

		students << {name: name,cohort: get_user_details[0]}

		puts "Now we have #{students.length} students "

		#get another name from the user
		puts "Enter another name"
		name = gets.chomp
	end

	#return students array
	students
end

def print_header

	puts	"The students of my cohort at Makers Academy"
	puts	"==========================================="
end

def print_student(students)

	count = students.length

	start = 0

	while start < count 

		puts "#{$col_0}Name:#{$col_1} #{students[start][:name].center(10)}"
		puts "#{$col_0}Cohort:#{$col_1} #{students[start][:cohort].center(3)}"
		puts "==================================================="

		start +=1
	end

=begin	

	students.each_with_index do |(key),index| # Add 'value' inside parenthesis if you wanna access it.

		puts "#{$color[0]}#{index+1}#{$color[1]} #{key[:name]} (#{key[:cohort]} cohort) "
	
	end


end

def print_footer(students)

	puts "Overall we have #{students.length} students" 	

end


def search_by_letter(students)

	puts "Tell me the letter?"
	letter = gets.chomp
	letter_found = false
	
	students.each do |student|

		if student[:name].downcase.start_with?(letter.downcase)

			temp_students = []

			temp_students << student

			print_student(temp_students)
			
			letter_found=true
		end
	end

	puts "#{$col_0}Sorry, There isn't a maker with the letter \"#{letter}\" #{$col_1}" unless letter_found
end

def search_by_count(students)

	puts "Which number do you want to use as a range?"

	user_number = gets.chomp

	students.each do |student|

		count_name = (student[:name].length)-1

		puts student[:name] if user_number.to_i >= count_name
	end	
end

students = input_students

print_header
print_student(students)
print_footer(students)

puts "Do you want to search a maker by letter or by counting the name?"
puts "Type \"l\" for letter or \"c\" for count"

arg_to_search = gets.chomp

arg_to_search == 'l' ? search_by_letter(students) : search_by_count(students)

=end
