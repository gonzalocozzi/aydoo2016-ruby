class ValidadorDeArgumentos

require_relative '../model/formato_invalido_error'
require_relative '../model/numero_de_argumentos_excedido_error'

  attr_accessor :argumentos
  attr_accessor :format_pretty
  attr_accessor :format_quiet

  def initialize(argumentos, format_pretty, format_quiet)
  	@argumentos = argumentos
  	@format_pretty = format_pretty
  	@format_quiet = format_quiet
  end

  def format_invalido
  	elegido_format_invalido = false

  	if argumentos.include? "format=" and !format_pretty and !format_quiet
      elegido_format_invalido = true
    end

    elegido_format_invalido
  end

    def numero_de_argumentos_excedido
  	numero_de_argumentos_excedido = false

  	if argumentos.split(" ").length > 3
  	  numero_de_argumentos_excedido = true
  	end

  	numero_de_argumentos_excedido
  end

  def validar_argumentos

  	if format_invalido
      fail FormatoInvalidoError.new
    elsif numero_de_argumentos_excedido
      fail NumeroDeArgumentosExcedidoError.new
    end
    	

  end

end