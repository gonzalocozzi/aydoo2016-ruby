class AnalizadorDeArgumentos

	attr_accessor :argumentos
	attr_accessor :factorizacion

  def initialize argumentos , factorizacion 
  	@argumentos = argumentos
  	@factorizacion = factorizacion
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

end