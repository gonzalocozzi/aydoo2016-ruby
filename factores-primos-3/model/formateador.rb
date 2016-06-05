class Formateador

	attr_accessor :factorizacion
	attr_accessor :factorizacion_formateada

	def initialize factorizacion
		@factorizacion = factorizacion
		@factorizacion_formateada = ""
	end

	def aplicar_formato_pretty
		@factorizacion_formateada = "Factores primos: " + @factorizacion
	end

	def aplicar_formato_quiet
		arreglo_de_factorizacion = factorizacion.split(" ")
		for numero in 0...arreglo_de_factorizacion.length
			@factorizacion_formateada = @factorizacion_formateada + "\n" + arreglo_de_factorizacion[numero]
		end
		"Factores primos: " + @factorizacion_formateada
	end

end