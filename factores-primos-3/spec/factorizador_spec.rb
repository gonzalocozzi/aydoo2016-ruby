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

  it 'deberia indicar que un numero no primo no es primo' do
  	factorizador = Factorizador.new 6
  	expect(factorizador.numero_es_primo).to eq false
	end

	it 'deberia devolver un arreglo con los factores primos de un numero no primo' do
		factorizador = Factorizador.new 90
		factorizacion_esperada = "2 3 3 5 "
		expect(factorizador.calcular_factores_primos).to eq factorizacion_esperada
	end

end
