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

  it 'deberia indicar que recibio argumento sort' do
  	factorizador = FactorizadorPrimo.new 360
  	factorizacion = factorizador.calcular_factores_primos
	analizador = AnalizadorDeArgumentos.new  "--sort=des" , factorizacion
    expect(analizador.sort).to eq true
  end

  it 'deberia indicar que recibio argumento output file' do
  	factorizador = FactorizadorPrimo.new 360
  	factorizacion = factorizador.calcular_factores_primos
	analizador = AnalizadorDeArgumentos.new  "--output-file=path" , factorizacion
    expect(analizador.output_file).to eq true
  end

  it 'deberia devolver la salida formateada pretty' do
  	factorizador = FactorizadorPrimo.new 360
  	factorizacion = factorizador.calcular_factores_primos
  	factorizacion_formateada = "Factores primos: 2 2 2 3 3 5 "
  	analizador = AnalizadorDeArgumentos.new "--format=pretty" , factorizacion
  	expect(analizador.obtener_salida_formateada).to eq factorizacion_formateada
  end

end