class Deed
	attr_accessor :uczynek, :punkty
	def initialize(uczynek, punkty)
		@uczynek = uczynek
		@punkty = punkty
	end

	def to_s
		puts "Za #{uczynek} dostajesz #{punkty} punkty"
	end
end