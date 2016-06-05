class Formateador

	attr_accessor :factorizacion

	def initialize factorizacion
		@factorizacion = factorizacion
	end

	def aplicar_formato_pretty
		"Factores primos: " + factorizacion
	end

	def aplicar_formato_quiet
		factorizacion_quiet = ""
		arreglo_de_factorizacion = factorizacion.split(" ")
		for numero in 0...arreglo_de_factorizacion.length
			factorizacion_quiet = factorizacion_quiet + "\n" + arreglo_de_factorizacion[numero]
		end
		"Factores primos: " + factorizacion_quiet
	end

	def invertir_orden
		factorizacion.reverse
	end


end