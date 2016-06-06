require 'rspec'
require_relative '../model/escritor_de_archivo'

describe EscritorDeArchivo do 

  it 'deberia indicar el nombre del archivo a escribir' do  	
    escritor = EscritorDeArchivo.new "salida" , "argumento_de_direccion"
    expect(escritor.argumento_de_direccion).to eq "argumento_de_direccion"
  end  

end