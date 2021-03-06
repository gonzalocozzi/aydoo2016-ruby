require 'rspec'
require_relative '../model/formateador'

describe Formateador do 

  it 'deberia devolver salida formateada pretty' do
  	factorizador = FactorizadorPrimo.new 360
  	factorizacion = factorizador.calcular_factores_primos
    factorizacion_formateada = "Factores primos de 360: 2 2 2 3 3 5"
	  formateador = Formateador.new 360 , factorizacion
    expect(formateador.aplicar_formato_pretty).to eq factorizacion_formateada
  end

  it 'deberia devolver salida formateada quiet' do
    factorizador = FactorizadorPrimo.new 360
    factorizacion = factorizador.calcular_factores_primos
    factorizacion_formateada = "Factores primos de 360: " + "\n" + "2" + "\n" + "2" + "\n" + "2" + "\n" + "3" + "\n" + "3" + "\n" + "5"
    formateador = Formateador.new 360 , factorizacion
    expect(formateador.aplicar_formato_quiet).to eq factorizacion_formateada
  end  

end