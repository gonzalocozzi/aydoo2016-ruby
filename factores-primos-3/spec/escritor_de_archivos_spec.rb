require 'rspec'
require_relative '../model/escritor_de_archivo'

describe EscritorDeArchivo do 

  it 'deberia indicar el nombre del archivo a escribir' do  	
    escritor = EscritorDeArchivo.new "salida" , "argumento_de_direccion"
    expect(escritor.argumento_de_direccion).to eq "argumento_de_direccion"
  end  

  it 'deberia indicar la salida a escribir' do  	
    escritor = EscritorDeArchivo.new "salida" , "argumento_de_direccion"
    expect(escritor.salida).to eq "salida"
  end  

  it 'deberia indicar la direccion completa del archivo a escribir' do  	
    escritor = EscritorDeArchivo.new "salida" , "--output-file=archivo.txt"
    direccion_absoluta_de_archivo = File.dirname(__FILE__)
    direccion_de_archivo = Pathname.new(direccion_absoluta_de_archivo).parent.to_s + "/archivo.txt"
    expect(escritor.obtener_direccion_de_archivo "archivo.txt").to eq direccion_de_archivo
  end 

  it 'deberia indicar que el archivo ha sido escrito con exito' do  	
    escritor = EscritorDeArchivo.new "salida" , "--output-file=archivo.txt"
    direccion_absoluta_de_archivo = File.dirname(__FILE__)
    direccion_de_carpeta_madre = Pathname.new(direccion_absoluta_de_archivo).parent.to_s
    salida = "El resultado de la factorizacion ha sido escrito con exito en " + direccion_de_carpeta_madre + "/archivo.txt"
    expect(escritor.escribir_archivo).to eq salida
  end  

  it 'deberia indicar que no se ha especificado un nombre de archivo' do  	
    escritor = EscritorDeArchivo.new "salida" , "--output-file="
    salida = "No ha especificado el nombre del archivo a escribir. Por favor, intente nuevamente."
    expect(escritor.escribir_archivo).to eq salida
  end 

end