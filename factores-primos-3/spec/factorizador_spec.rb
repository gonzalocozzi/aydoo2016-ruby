require 'rspec'
require_relative '../model/factorizador'

describe Factorizador do 

  it 'deberia devolver el valor ingresado por consola sin factorizar' do
	  factorizador = Factorizador.new 5
    expect(factorizador.numero_a_factorizar).to eq 5
  end

  it 'deberia indicar que un numero primo es primo' do
  	factorizador = Factorizador.new 5
  	expect(factorizador.numero_es_primo).to eq true
  end
	
end
