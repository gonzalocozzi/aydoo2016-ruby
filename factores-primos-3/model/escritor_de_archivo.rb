class EscritorDeArchivo

require 'pathname'
require_relative '../model/sin_nombre_de_archivo_error'

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
      raise SinNombreDeArchivoError.new      
  	else
  	  nombre_de_archivo = argumento_de_direccion[15..argumento_de_direccion.length - 3]  	
      direccion_de_archivo = obtener_direccion_de_archivo nombre_de_archivo  
  	  f = File.open(direccion_de_archivo, 'w')
	    f.puts salida	  
	    f.close	    
  	  "El resultado de la factorizacion ha sido escrito con exito en " + direccion_de_archivo
    end
  end

end