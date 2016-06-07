class AnalizadorDeArgumentos

require_relative '../model/factorizador_primo'
require_relative '../model/formateador'
require_relative '../model/escritor_de_archivo'
require_relative '../model/validador_de_argumentos'
require_relative '../model/numero_de_argumentos_excedido_error'
require_relative '../model/formato_invalido_error'
require_relative '../model/formato_duplicado_error'

  attr_accessor :argumentos
  attr_accessor :formateador
  attr_accessor :escritor_de_archivo
  attr_accessor :validador_de_argumentos
  
  def initialize(numero_a_factorizar, argumentos)
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

  	if argumentos.include? "--sort=desc"
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

  def escribir_archivo(salida)
  	arreglo_de_argumentos = argumentos.split(" ")
  	posicion_de_direccion = 0

    for numero in 0...arreglo_de_argumentos.length

      if arreglo_de_argumentos[numero].include? "--output-file="
        posicion_de_direccion = numero
      end

  	end

  	argumento_de_direccion = arreglo_de_argumentos[posicion_de_direccion].tr('"[],','')
  	@escritor_de_archivo = EscritorDeArchivo.new salida , argumento_de_direccion
  	@escritor_de_archivo.escribir_archivo
  end

  def analizar_argumentos
  	salida = ""
  	
  	if sort
  	  formateador.factorizacion.reverse!
  	end
  	
  	if format_pretty
  	  salida = formateador.aplicar_formato_pretty
  	elsif format_quiet
  	  salida = formateador.aplicar_formato_quiet
  	end
  	
  	if output_file
      salida = escribir_archivo salida	  
  	end

  	salida
  end

  def obtener_salida_formateada
  	@validador_de_argumentos = ValidadorDeArgumentos.new argumentos , format_pretty , format_quiet
  	validador_de_argumentos.validar_argumentos    
  	
  	analizar_argumentos
  end

end