require 'rspec'
require_relative '../model/analizador_de_argumentos'

describe AnalizadorDeArgumentos do 

  it 'deberia indicar que recibio argumento format pretty' do
  	factorizador = FactorizadorPrimo.new 360
  	factorizacion = factorizador.calcular_factores_primos
	analizador = AnalizadorDeArgumentos.new "--format=pretty" , factorizacion
    expect(analizador.format_pretty).to eq true
  end  

  it 'deberia indicar que recibio argumento format pretty cuando no se le especifica formato' do
  	factorizador = FactorizadorPrimo.new 360
  	factorizacion = factorizador.calcular_factores_primos
	analizador = AnalizadorDeArgumentos.new "", factorizacion
    expect(analizador.format_pretty).to eq true
  end 

  it 'deberia indicar que recibio argumento format pretty sin importar capitalizacion' do
  	factorizador = FactorizadorPrimo.new 360
  	factorizacion = factorizador.calcular_factores_primos
	analizador = AnalizadorDeArgumentos.new "--format=PRETTY" , factorizacion
    expect(analizador.format_pretty).to eq true
  end

  it 'deberia indicar que recibio argumento format quiet' do
  	factorizador = FactorizadorPrimo.new 360
  	factorizacion = factorizador.calcular_factores_primos
	analizador = AnalizadorDeArgumentos.new  "--format=quiet" , factorizacion
    expect(analizador.format_quiet).to eq true
  end

  it 'deberia indicar que recibio argumento format quiet sin importar capitalizacion' do
  	factorizador = FactorizadorPrimo.new 360
  	factorizacion = factorizador.calcular_factores_primos
	analizador = AnalizadorDeArgumentos.new  "--format=QUIET" , factorizacion
    expect(analizador.format_quiet).to eq true
  end

  it 'deberia indicar que recibio argumento sort' do
  	factorizador = FactorizadorPrimo.new 360
  	factorizacion = factorizador.calcular_factores_primos
	analizador = AnalizadorDeArgumentos.new  "--sort=des" , factorizacion
    expect(analizador.sort).to eq true
  end

  it 'deberia indicar que recibio argumento sort sin importar capitalizacion' do
  	factorizador = FactorizadorPrimo.new 360
  	factorizacion = factorizador.calcular_factores_primos
	analizador = AnalizadorDeArgumentos.new  "--sort=DES" , factorizacion
    expect(analizador.sort).to eq true
  end

  it 'deberia indicar que recibio argumento output file' do
  	factorizador = FactorizadorPrimo.new 360
  	factorizacion = factorizador.calcular_factores_primos
	analizador = AnalizadorDeArgumentos.new  "--output-file=path" , factorizacion
    expect(analizador.output_file).to eq true
  end

  it 'deberia indicar que recibio argumento output file sin importar capitalizacion' do
  	factorizador = FactorizadorPrimo.new 360
  	factorizacion = factorizador.calcular_factores_primos
	analizador = AnalizadorDeArgumentos.new  "--OUTPUT-file=path" , factorizacion
    expect(analizador.output_file).to eq true
  end

  it 'deberia devolver salida formateada pretty e invertida' do
  	factorizador = FactorizadorPrimo.new 360
  	factorizacion = factorizador.calcular_factores_primos
  	salida_formateada = "Factores primos: 5 3 3 2 2 2"
	analizador = AnalizadorDeArgumentos.new  "--sort=des --format=pretty" , factorizacion
    expect(analizador.obtener_salida_formateada).to eq salida_formateada
  end

  it 'deberia devolver salida formateada pretty e invertida cuando no se especifica formato' do
  	factorizador = FactorizadorPrimo.new 360
  	factorizacion = factorizador.calcular_factores_primos
  	salida_formateada = "Factores primos: 5 3 3 2 2 2"
	analizador = AnalizadorDeArgumentos.new  "--sort=des" , factorizacion
    expect(analizador.obtener_salida_formateada).to eq salida_formateada
  end

  it 'deberia devolver salida formateada quiet e invertida' do
  	factorizador = FactorizadorPrimo.new 360
  	factorizacion = factorizador.calcular_factores_primos
  	salida_formateada = "Factores primos: " + "\n" + "5" + "\n" + "3" + "\n" + "3" + "\n" + "2" + "\n" + "2" + "\n" + "2"
	analizador = AnalizadorDeArgumentos.new  "--sort=des --format=quiet" , factorizacion
    expect(analizador.obtener_salida_formateada).to eq salida_formateada
  end 

  it 'deberia indicar que recibio argumento format invalido' do
  	factorizador = FactorizadorPrimo.new 360
  	factorizacion = factorizador.calcular_factores_primos
  	salida_formateada = "Ha ingresado un formato invalido. Los formatos aceptados son pretty y quiet. Por favor, intente nuevamente."
	analizador = AnalizadorDeArgumentos.new  "--format=" , factorizacion
    expect(analizador.obtener_salida_formateada).to eq salida_formateada
  end 
  
end