class AnalizadorDeArgumentos

require_relative '../model/formateador'

	attr_accessor :argumentos
	attr_accessor :factorizacion
	attr_accessor :formateador

  def initialize argumentos , factorizacion 
  	@argumentos = argumentos
  	@factorizacion = factorizacion
  	@formateador = Formateador.new factorizacion 
  end

  def format_pretty
  	elegido_format_pretty = false
  	if argumentos.include? "--format=pretty"
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

  	if sort
  		salida_formateada = formateador.invertir_orden
  	end

  	if format_pretty
  		salida_formateada = formateador.aplicar_formato_pretty
  	elsif format_quiet
  		salida_formateada = formateador.aplicar_formato_quiet
  	end 
  end

end