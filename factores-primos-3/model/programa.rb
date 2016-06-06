class Programa

require_relative '../model/analizador_de_argumentos'
require_relative '../model/factorizador_primo'

  numero_a_factorizar = ARGV[0].to_i
  argumentos = ARGV[1..-1].to_s  
  analizador_de_argumentos = AnalizadorDeArgumentos.new numero_a_factorizar , argumentos

  puts analizador_de_argumentos.obtener_salida_formateada

end