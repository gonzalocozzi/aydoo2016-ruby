class Programa

require_relative '../model/analizador_de_argumentos'
require_relative '../model/factorizador_primo'
require_relative '../model/sin_argumentos_error'

  numero_a_factorizar = ARGV[0].to_i
  argumentos = ARGV[1..-1].to_s  

  if ARGV.size == 0
    raise SinArgumentosError.new
  else
    analizador_de_argumentos = AnalizadorDeArgumentos.new numero_a_factorizar , argumentos
    puts analizador_de_argumentos.obtener_salida_formateada
  end

end