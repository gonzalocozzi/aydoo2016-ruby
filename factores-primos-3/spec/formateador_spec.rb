require 'rspec'
require_relative '../model/formateador'

describe Formateador do 

  it 'deberia devolver salida formateada pretty' do
  	factorizador = FactorizadorPrimo.new 360
  	factorizacion = factorizador.calcular_factores_primos
    factorizacion_formateada = "Factores primos: 2 2 2 3 3 5"
	  formateador = Formateador.new factorizacion
    expect(formateador.aplicar_formato_pretty).to eq factorizacion_formateada
  end

  it 'deberia devolver salida formateada quiet' do
    factorizador = FactorizadorPrimo.new 360
    factorizacion = factorizador.calcular_factores_primos
    factorizacion_formateada = "Factores primos: " + "\n" + "2" + "\n" + "2" + "\n" + "2" + "\n" + "3" + "\n" + "3" + "\n" + "5"
    formateador = Formateador.new factorizacion
    expect(formateador.aplicar_formato_quiet).to eq factorizacion_formateada
  end

  it 'deberia devolver salida invertida' do
    factorizador = FactorizadorPrimo.new 360
    factorizacion = factorizador.calcular_factores_primos
    factorizacion_formateada = "5 3 3 2 2 2"
    formateador = Formateador.new factorizacion
    expect(formateador.invertir_orden).to eq factorizacion_formateada
  end
  

end