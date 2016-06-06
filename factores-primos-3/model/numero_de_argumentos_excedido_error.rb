class NumeroDeArgumentosExcedidoError < StandardError

  def initialize(msg="Ha ingresado mas de tres argumentos. Por favor, intente nuevamente.")
    super
  end

end