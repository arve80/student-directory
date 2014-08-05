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

def print_header

	puts	"The students of my cohort at Makers Academy"
	puts	"==========================================="
end

def print_info(students)

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






