require 'rspec'
require_relative '../model/analizador_de_argumentos'

describe AnalizadorDeArgumentos do 

  it 'deberia indicar que recibio argumento format pretty' do  	
	  analizador = AnalizadorDeArgumentos.new 360, "--format=pretty"
    expect(analizador.format_pretty).to eq true
  end  

  it 'deberia indicar que recibio argumento format pretty cuando no se le especifica formato' do  	
	  analizador = AnalizadorDeArgumentos.new 360, ""
    expect(analizador.format_pretty).to eq true
  end 

  it 'deberia indicar que recibio argumento format pretty sin importar capitalizacion' do  	
	  analizador = AnalizadorDeArgumentos.new 360, "--format=PRETTY"
    expect(analizador.format_pretty).to eq true
  end

  it 'deberia indicar que recibio argumento format quiet' do  	
	  analizador = AnalizadorDeArgumentos.new 360 , "--format=quiet"
    expect(analizador.format_quiet).to eq true
  end

  it 'deberia indicar que recibio argumento format quiet sin importar capitalizacion' do  	
	  analizador = AnalizadorDeArgumentos.new 360 , "--format=QUIET"
    expect(analizador.format_quiet).to eq true
  end

  it 'deberia indicar que recibio argumento sort' do  	
	  analizador = AnalizadorDeArgumentos.new 360 , "--sort=desc"
    expect(analizador.sort).to eq true
  end

  it 'deberia indicar que recibio argumento sort sin importar capitalizacion' do  	
	  analizador = AnalizadorDeArgumentos.new 360 , "--sort=DESC"
    expect(analizador.sort).to eq true
  end

  it 'deberia indicar que recibio argumento output file' do  	
	  analizador = AnalizadorDeArgumentos.new 360 , "--output-file=path"
    expect(analizador.output_file).to eq true
  end

  it 'deberia indicar que recibio argumento output file sin importar capitalizacion' do  	
	  analizador = AnalizadorDeArgumentos.new 360 , "--OUTPUT-file=path"
    expect(analizador.output_file).to eq true
  end

  it 'deberia devolver salida formateada pretty e invertida' do  	
  	salida_formateada = "Factores primos de 360: 5 3 3 2 2 2"
	  analizador = AnalizadorDeArgumentos.new 360 , "--sort=desc --format=pretty"
    expect(analizador.obtener_salida_formateada).to eq salida_formateada
  end

  it 'deberia devolver salida formateada pretty e invertida cuando no se especifica formato' do  	
  	salida_formateada = "Factores primos de 360: 5 3 3 2 2 2"
	  analizador = AnalizadorDeArgumentos.new 360 , "--sort=desc"
    expect(analizador.obtener_salida_formateada).to eq salida_formateada
  end

  it 'deberia devolver salida formateada quiet e invertida' do  	
  	salida_formateada = "Factores primos de 360: " + "\n" + "5" + "\n" + "3" + "\n" + "3" + "\n" + "2" + "\n" + "2" + "\n" + "2"
	  analizador = AnalizadorDeArgumentos.new 360 , "--sort=desc --format=quiet"
    expect(analizador.obtener_salida_formateada).to eq salida_formateada
  end 
  
end