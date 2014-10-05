require_relative "deed"

class Child
	attr_accessor :name, :age, :punkty

	def initialize(name, age)
		@name = name
		@age = age
		@deeds = []
		@punkty = 0
	end

	def to_s
		puts "#{@name} ma #{@age} lat i #{@punkty} punktow"
	end

	def add_deed(uczynek, punkty)
		uczynek = Deed.new(uczynek, punkty)
		@deeds.push(uczynek)
		if good_deed?(uczynek)
			@punkty += 1
		else
			@punkty -= 1
		end
			
	end

	def good_deed?(uczynek)
		true if uczynek.punkty > 3
	end

	def show_deeds
		@deeds.each do|deed|
			puts deed.uczynek
		end
	end
end

