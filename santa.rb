require_relative "gifts"
require_relative "child"

class SantaClaus
	attr_accessor :name, :age
	def initialize(name,age)
		@name = name
		@age = age
		@gift_bag = []
	end

	def to_s
		puts "Hi!I' your Santa: #{@name}, I'm #{@age}"
	end

	def add_gift_to_bag(*gifts)
		gifts.each do |gift|
			@gift_bag.push(gift)
		end
	end

	def which_present(dziecko)
		gifts_for_dziecko = @gift_bag.select! {|gift| gift.punkty <= dziecko.punkty}
		sorted_gifts = gifts_for_dziecko.sort { |gift| gift.punkty }
		puts 'Jako prezent dostaje:' + sorted_gifts.first.nazwa
	end
end

michalek = SantaClaus.new('Michal',29)

prezent1 = Gift.new("Iphone6", 4000, 10)
prezent2 = Gift.new("Iphone5", 2500, 8)
prezent4 = Gift.new("Kalkulator", 500, 1)
prezent5 = Gift.new("Kot", 200, 5)
prezent6 = Gift.new("Puzzle", 50, 0)
prezent3 = Gift.new("Windows Phone", 1500, 3)

michalek.add_gift_to_bag(prezent2, prezent1, prezent4, prezent5, prezent6, prezent3)

dziecko1 = Child.new("Marlena", 3)

dziecko1.add_deed('Pobicie kolegi', 1)
dziecko1.add_deed('Wyniesienie smieci', 4)
dziecko1.add_deed('Pomoc babci', 5)
dziecko1.add_deed('Pobicie kolegi', 1)
dziecko1.add_deed('Wyniesienie smieci', 4)
dziecko1.add_deed('Wyniesienie smieci', 4)


dziecko1.to_s

michalek.which_present(dziecko1)
