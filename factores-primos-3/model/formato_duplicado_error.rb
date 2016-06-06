class FormatoDuplicadoError < StandardError

  def initialize(msg="Ha ingresado dos formatos a la vez. Solo debe indicar uno al mismo tiempo. Por favor, intente nuevamente.")
    super
  end

end