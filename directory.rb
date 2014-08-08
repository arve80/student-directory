@students = []

$col_0 = "\e[0;31m" 
$col_1 = "\e[0m"

def print_menu
		puts "1. Input the students"
		puts "2. Show the students"
		puts "3. To save the file"
		puts "4. To load all the students"
		puts "5. To search a student by letter"
		puts "6. To delete content file"
		puts "9. Exit"
end

def show_students
	print_header
	print_students
	print_footer
end

def process(selection)
	case selection

		when '1'
			input_students

		when '2'
			show_students
		when '3'
			save_students
		when '4'
			load_students
		when '5'
			search_by_letter
		when '6'
			delete_student_from_file	
		when '9'
			exit
		else
			puts "#{$col_0}I don't know what you meant, try again#{$col_1}"
	end
end

def interactive_menu

	loop do
		
		print_menu
		process(STDIN.gets.chomp)
		
	end
end

def add_student(name,cohort)
		
	@students << {name: name, cohort: cohort}

end

def input_students
	
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice "

	#get the first name
	name = STDIN.gets.chomp

		#while the name is not empty, repeat this code
	while !name.empty? do
		
		add_student(name, :August)

		print_footer

		#get another name from the user
		puts "Enter another name"
		name = STDIN.gets.chomp

	end

	#return students array
	@students

end

def print_header

	puts	"The students of my cohort at Makers Academy"
	puts	"==========================================="
end

def print_students

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


def save_students

	#open the file for writing
	file = File.open("students.csv","w")

	#iterate over the array of students
	@students.each do |student|
		student_data = [student[:name],student[:cohort]]
		csv_line = student_data.join(",")
		file.puts csv_line
	end

	file.close
end

def load_students(file_name='students.csv')
		
		file = File.open(file_name,'r')
		file.readlines.each do |line|
			name, cohort = line.chomp.split(',')
			add_student(name,cohort)
		end
		file.close
end

def try_load_students
	
	file_name = ARGV.first
	return if file_name.nil?

	if File.exists?(file_name)
		load_students(file_name)
		puts "Loaded #{@students.length} from #{file_name}"

	else
		puts "#{$col_0}Sorry, #{file_name} doesn't exist.#{$col_1}"
		exit
	end
end

def delete_student_from_file(file_name='students.csv')
			
		file = File.open(file_name,'w')
		file.puts ' '
		file.close
end

def search_by_letter
	puts "Which letter to search?"
	letter = STDIN.gets.chomp
	letter_found = false

	@students.each do |student|

		if student[:name].downcase.start_with?(letter.downcase)

			print_students
			letter_found = true
		end
	end
		puts "#{$col_0}Sorry, There isn't a maker with the letter \"#{letter.capitalize}\" #{$col_1}" unless letter_found

end


# Calling the program

try_load_students
interactive_menu
