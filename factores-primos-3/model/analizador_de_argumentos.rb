class AnalizadorDeArgumentos

require_relative '../model/factorizador_primo'
require_relative '../model/formateador'

	attr_accessor :argumentos
	attr_accessor :formateador

  def initialize numero_a_factorizar , argumentos
  	@argumentos = argumentos.downcase
  	factorizador = FactorizadorPrimo.new numero_a_factorizar
  	factorizacion = factorizador.calcular_factores_primos
  	@formateador = Formateador.new numero_a_factorizar , factorizacion
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

  def format_invalido
  	elegido_format_invalido = false
  	if argumentos.include? "format=" and !format_pretty and !format_quiet
      elegido_format_invalido = true
    end
    elegido_format_invalido
  end

  def format_contradictorio
  	elegido_format_contradictorio = false
  	if format_quiet and format_pretty
  	  elegido_format_contradictorio = true
  	end
  	elegido_format_contradictorio
  end

  def analizar_argumentos
  	if sort
  	  formateador.factorizacion.reverse!
  	end
  	if format_pretty
  	  formateador.aplicar_formato_pretty
  	elsif format_quiet
  	  formateador.aplicar_formato_quiet
  	end 
  end

  def obtener_salida_formateada
    if format_invalido
      "Ha ingresado un formato invalido. Los formatos aceptados son pretty y quiet. Por favor, intente nuevamente."
    elsif format_contradictorio
      "Ha ingresado dos formatos a la vez. Solo debe indicar uno al mismo tiempo. Por favor, intente nuevamente."	
    else
  	  analizar_argumentos
    end
  end

end