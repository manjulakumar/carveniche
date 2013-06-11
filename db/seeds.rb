grades = (1..10).to_a
first_names = %w(ramesh suresh dinesh manju mahesh ravi ram shanthi)
last_names = %w(kumar sharma agarwal trivedi pathak shetty nambiar)

first_names.each do |fname|
	last_names.each do |lname|
		Marksheet.create!(student_name: "#{fname} #{lname}",
						  grade: grades.sample.to_s,
						  marks: 0)
	end
end

