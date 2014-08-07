
@students = []

$col_0 = "\e[0;31m" 
$col_1 = "\e[0m"



def add_student(name,cohort)
		
	@students << {name: name, cohort: cohort}

end

def print_menu
		puts "1. Input the students"
		puts "2. Show the students"
		puts "9. Exit"
end

def show_students
	print_header
	print_student
	print_footer
end

def process(selection)
	case selection

		when '1'
			input_students

		when '2'
			show_students
		when '9'
			exit
		else
			puts "I don't know what you meant, try again"
	end
end

def interactive_menu

	loop do
		
		print_menu
		process(gets.chomp)
		
	end
end



def input_students
	
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice "

	#get the first name
	name = gets.chomp

		#while the name is not empty, repeat this code
	while !name.empty? do
		
		add_student(name, :August)

		print_footer

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

def print_student

	stud_length = @students.length

	count = 0

	while count < stud_length 

		puts "#{$col_0}Name:#{$col_1} #{@students[count][:name].center(12)}"
		puts "#{$col_0}Cohort:#{$col_1} #{@students[count][:cohort].to_s.center(8)}"
		puts "==================================================="

		count +=1
	end

=begin	

	students.each_with_index do |(key),index| # Add 'value' inside parenthesis if you wanna access it.

		puts "#{$color[0]}#{index+1}#{$color[1]} #{key[:name]} (#{key[:cohort]} cohort) "
	
	end
=end

end

def print_footer

	stu_length = @students.length
	
	puts "Overall we have #{stu_length} student#{'s' if stu_length > 1}" 	

end


# Calling the program

interactive_menu
