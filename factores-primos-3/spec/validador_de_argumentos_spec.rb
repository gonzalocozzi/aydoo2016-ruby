require 'rspec'
require_relative '../model/validador_de_argumentos'

describe ValidadorDeArgumentos do 

  it 'deberia indicar que recibio argumento format invalido' do  	
  	validador = ValidadorDeArgumentos.new "--format=yerba" , false , false
    expect {validador.validar_argumentos}.to raise_error(FormatoInvalidoError)
  end 

  it 'deberia indicar que se ha excedido el numero de argumentos admitidos' do  	
  	validador = ValidadorDeArgumentos.new "--sort=des  --sort=asc --format=quiet --output-file=" , true , true
    expect {validador.validar_argumentos}.to raise_error(NumeroDeArgumentosExcedidoError)
  end
  
end