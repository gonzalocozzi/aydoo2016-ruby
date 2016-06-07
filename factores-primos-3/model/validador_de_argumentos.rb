class ValidadorDeArgumentos

require_relative '../model/formato_invalido_error'

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

  def validar_argumentos

  	if format_invalido
      fail FormatoInvalidoError.new
    end

  end

end