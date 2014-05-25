require 'csv'

def interactive_menu
	loop do print_menu
		process(STDIN.gets.chomp)
	end
end

def print_menu
	puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	puts "Splashdown Simulator"
	puts "created by Sasha & Nicolai"
	puts "--------------------------------------"
	puts "A. Landing Trajectory"
	puts "B. Fak off"
	puts "______________________________________"
end

def process(selection)
	case selection
	when "A", "a"
		puts touchdown(pick_country)
	when "B", "b"
		exit
	end
end	

def countries
	@countries ||= []
end

def origin_continent(country)
	CSV.foreach("../continents.csv") do |row|
		return row[0] if row.include?(" #{country}")
	end
end

def chosen_country
	CSV.foreach("../continents.csv") do |row|
		row.delete_at(0)
		countries << row.join(",").split(",")
	end
	countries.flatten!
end

def pick_country
	countries.sample.strip
end

def touchdown(destination)
	if rand > 0.75
		puts "Congratulations traveler! You have landed in #{destination}." 
		puts "The continent you are in is called #{origin_continent(destination)}. Be nice!"
	else 
		puts "Splash! Better start swimming."
	end
end

chosen_country
interactive_menu