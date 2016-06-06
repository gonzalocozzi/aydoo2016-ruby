class EscritorDeArchivo

  attr_accessor :salida
  attr_accessor :argumento_de_direccion

  def initialize salida , argumento_de_direccion
    @salida = salida
    @argumento_de_direccion = argumento_de_direccion
  end

  def obtener_direccion_de_archivo nombre_de_archivo
  	direccion_absoluta_de_archivo = File.dirname(__FILE__)
	direccion_de_carpeta_madre = Pathname.new(direccion_absoluta_de_archivo).parent.to_s
	direccion_de_carpeta_madre + "/" + nombre_de_archivo
  end

  def escribir_archivo
  	if argumento_de_direccion.length == 14
      "No ha especificado el nombre del archivo a escribir. Por favor, intente nuevamente."
  	else
  	  nombre_de_archivo = argumento_de_direccion[14..argumento_de_direccion.length - 1]  	  
  	  f = File.open(nombre_de_archivo, 'w')
	  f.puts salida	  
	  f.close
	  direccion_de_archivo = obtener_direccion_de_archivo nombre_de_archivo
  	  "El resultado de la factorizacion ha sido escrito con exito en " + direccion_de_archivo
    end
  end

end