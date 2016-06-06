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

  it 'deberia indicar que el archivo ha sido escrito con exito' do  	
    escritor = EscritorDeArchivo.new "salida" , "--output-file=archivo.txt"
    salida = "El resultado de la factorizacion ha sido escrito con exito en archivo.txt"
    expect(escritor.escribir_archivo).to eq salida
  end  

end