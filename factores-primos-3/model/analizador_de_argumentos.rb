class AnalizadorDeArgumentos

require_relative '../model/formateador'

	attr_accessor :argumentos
	attr_accessor :factorizacion
	attr_accessor :formateador

  def initialize argumentos , factorizacion 
  	@argumentos = argumentos.downcase
  	@factorizacion = factorizacion
  	@formateador = Formateador.new factorizacion 
  end

  def format_pretty
  	elegido_format_pretty = false
  	if argumentos.include? "--format=pretty" or !argumentos.include? "--format="
  		elegido_format_pretty = true
  	end
  	elegido_format_pretty
  end

  def format_quiet
  	elegido_format_quiet = false
  	if argumentos.include? "--format=quiet"
  		elegido_format_quiet = true
  	end
  	elegido_format_quiet
  end

  def format_invalido
  	elegido_format_invalido = false
  	if argumentos.include? "format=" and !format_pretty and !format_quiet
      elegido_format_invalido = true
    end
    elegido_format_invalido
  end

  def sort
  	elegido_sort = false
  	if argumentos.include? "--sort=des"
  		elegido_sort = true
  	end
  	elegido_sort
  end

  def output_file
  	elegido_output_file = false
  	if argumentos.include? "--output-file="
  		elegido_output_file = true
  	end
  	elegido_output_file
  end

  def obtener_salida_formateada

    salida_formateada = ""

    if format_invalido
    	salida_formateada = "Ha ingresado un formato invalido. Los formatos aceptados son pretty y quiet. Por favor, intente nuevamente."
    end

  	if sort
  		formateador.factorizacion.reverse!
  	end

  	if format_pretty
  		salida_formateada = formateador.aplicar_formato_pretty
  	elsif format_quiet
  		salida_formateada = formateador.aplicar_formato_quiet
  	end 

  	salida_formateada

  end

end