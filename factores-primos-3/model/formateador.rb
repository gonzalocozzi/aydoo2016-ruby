class Formateador

	attr_accessor :factorizacion

	def initialize factorizacion
		@factorizacion = factorizacion
	end

	def aplicar_formato_pretty
		factorizacion = "Factores primos: " + @factorizacion
	end

end