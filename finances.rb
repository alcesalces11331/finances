#This will be a simple program which accepts an argument of financial amount and displays relevant, budgeting information.
#A pay period of 16-15, for simplicity's sake.

#base income
#for example: 

#iterate over expenses and output remaining amount
def finances
	expenses = {discover: 100, sprint: 109.85, twcable: 32.45, LES: 0, spotify: 10.71, bhe: 0, petco: 54.53, rent: 445, skillsfund: 305.36, huel: 66.00, NC: 10}
	total_remaining = nil
	puts "Input monthly total:"
	input = gets.chomp
	input = input.to_i 
	puts "Input varying Black Hills Energy bill:"
	bhe_new = gets.chomp
	bhe_new = bhe_new.to_i 
	expenses[:bhe] = bhe_new
	puts "Input varying LES bill:"
	les_new = gets.chomp
	les_new = les_new.to_i
	expenses[:LES] = les_new
	expenses.each do |bill_key, bill_value|
		input -= bill_value
	end
	total_remaining = input
	if total_remaining > 0
		puts "Total Amount Remaining: $#{total_remaining.round(2)}."
	else
		puts "Alert! Watch your spending."
		puts "Total Amount Over Spending: $#{total_remaining.round(2)}."
	end
end

finances