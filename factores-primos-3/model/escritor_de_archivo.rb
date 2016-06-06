class EscritorDeArchivo

  attr_accessor :salida
  attr_accessor :argumento_de_direccion

  def initialize salida , argumento_de_direccion
    @salida = salida
    @argumento_de_direccion = argumento_de_direccion
  end

  def escribir_archivo
  	nombre_de_archivo = argumento_de_direccion[14..argumento_de_direccion.length - 1]
  	"El resultado de la factorizacion ha sido escrito con exito en " + nombre_de_archivo 
  end

end