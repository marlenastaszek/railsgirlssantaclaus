class Gift
	attr_accessor :nazwa, :cena, :punkty
	def initialize(nazwa, cena, punkty)
		@nazwa = nazwa
		@cena = cena
		@punkty = punkty
	end

	def to_s
		puts "Price #{@cena} Name: #{@nazwa} Punkty: #{@punkty}"
	end
end