require 'rspec'
require_relative '../model/analizador_de_argumentos'

describe AnalizadorDeArgumentos do 

  it 'deberia indicar que recibio argumento format pretty' do
  	factorizador = FactorizadorPrimo.new 360
  	factorizacion = factorizador.calcular_factores_primos
	analizador = AnalizadorDeArgumentos.new "--format=pretty" , factorizacion
    expect(analizador.format_pretty).to eq true
  end

  it 'deberia indicar que recibio argumento format quiet' do
  	factorizador = FactorizadorPrimo.new 360
  	factorizacion = factorizador.calcular_factores_primos
	analizador = AnalizadorDeArgumentos.new  "--format=quiet" , factorizacion
    expect(analizador.format_quiet).to eq true
  end

end