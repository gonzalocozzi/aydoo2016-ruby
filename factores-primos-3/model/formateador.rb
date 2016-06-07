class Formateador

attr_accessor :numero_a_factorizar
attr_accessor :factorizacion

  def initialize(numero_a_factorizar, factorizacion)
    @numero_a_factorizar = numero_a_factorizar.to_s
    @factorizacion = factorizacion
  end

  def aplicar_formato_pretty
    "Factores primos de #{@numero_a_factorizar}: #{factorizacion}"
  end

  def aplicar_formato_quiet
    factorizacion_quiet = ""
	  arreglo_de_factorizacion = factorizacion.split(" ")

	  for numero in 0...arreglo_de_factorizacion.length
		  factorizacion_quiet = "#{factorizacion_quiet}\n#{arreglo_de_factorizacion[numero]}"
	  end

    "Factores primos de #{@numero_a_factorizar}: #{factorizacion_quiet}"
  end

end