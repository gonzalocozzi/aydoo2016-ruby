class AnalizadorDeArgumentos

	attr_accessor :argumentos
	attr_accessor :factorizacion

  def initialize argumentos , factorizacion 
  	@argumentos = argumentos
  	@factorizacion = factorizacion
  end

  def format_pretty
  	if argumentos.include? "--format=pretty"
  		true
  	else
  		false
  	end
  end

end