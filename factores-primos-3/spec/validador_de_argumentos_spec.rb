require 'rspec'
require_relative '../model/validador_de_argumentos'

describe ValidadorDeArgumentos do 

  it 'deberia indicar que recibio argumento format invalido' do  	
  	validador = ValidadorDeArgumentos.new "--format=yerba" , false , false
    expect {validador.validar_argumentos}.to raise_error(FormatoInvalidoError)
  end 
  
end