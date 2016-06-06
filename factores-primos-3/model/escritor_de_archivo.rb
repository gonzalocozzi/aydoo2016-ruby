class EscritorDeArchivo

  attr_accessor :salida
  attr_accessor :argumento_de_direccion

  def initialize salida , argumento_de_direccion
    @salida = salida
    @argumento_de_direccion = argumento_de_direccion
  end

  def escribir_archivo

  	if argumento_de_direccion.length == 14
      "No ha especificado un nombre de archivo. Por favor, intente nuevamente."
  	else
  	nombre_de_archivo = argumento_de_direccion[14..argumento_de_direccion.length - 1]
  	  "El resultado de la factorizacion ha sido escrito con exito en " + nombre_de_archivo 
    end

  end

end