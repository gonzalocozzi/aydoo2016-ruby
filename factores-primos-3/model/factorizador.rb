class Factorizador	

	attr_accessor :numero_a_factorizar

	def initialize numero
		@numero_a_factorizar = numero
	end

	def numero_es_primo
		es_primo = true
		for numero in 2...numero_a_factorizar
			if numero_a_factorizar % numero == 0
				es_primo = false
			end
		end
		es_primo
	end

end