class Factorizador	

  require 'prime'

  attr_accessor :numero_a_factorizar

  def initialize numero
    @numero_a_factorizar = numero
  end

  def numero_es_primo
    es_primo = true

      for numero in 2...numero_a_factorizar
        if numero_a_factorizar % numero == 0
          es_primo = false
        end
      end

    es_primo
  end

  def calcular_factores_primos 
    factorizacion = ""
    #Utilizo la clase Prime para obtener la factorizacion prima de un numero 
    arreglo_de_factores_primos = Prime.prime_division(numero_a_factorizar).flat_map { |factor, power| [factor] * power }
    
    arreglo_de_factores_primos.each do |arreglo_de_factores_primos|
        factorizacion += arreglo_de_factores_primos.to_s + " "
    end
    
    factorizacion
  end


end