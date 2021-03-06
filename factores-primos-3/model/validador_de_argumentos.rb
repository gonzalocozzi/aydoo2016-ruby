class ValidadorDeArgumentos

require_relative '../model/numero_de_argumentos_excedido_error'
require_relative '../model/formato_invalido_error'
require_relative '../model/formato_duplicado_error'

  attr_accessor :argumentos
  attr_accessor :format_pretty
  attr_accessor :format_quiet

  def initialize(argumentos, format_pretty, format_quiet)
  	@argumentos = argumentos
  	@format_pretty = format_pretty
  	@format_quiet = format_quiet
  end

  def validar_argumentos

    if format_invalido
      fail FormatoInvalidoError.new
    elsif numero_de_argumentos_excedido
      fail NumeroDeArgumentosExcedidoError.new
    elsif format_duplicado
      fail FormatoDuplicadoError.new
    end   

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

  def format_duplicado
  	elegido_format_duplicado = false

  	if format_quiet and format_pretty
  	  elegido_format_duplicado = true
  	end

  	elegido_format_duplicado
  end

  private :format_invalido, :numero_de_argumentos_excedido, :format_duplicado

end