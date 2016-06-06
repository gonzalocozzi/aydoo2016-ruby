class EscritorDeArchivo

  attr_accessor :salida
  attr_accessor :argumento_de_direccion

  def initialize salida , argumento_de_direccion
    @salida = salida
    @argumento_de_direccion = argumento_de_direccion
  end

  def escribir_archivo
  end

end