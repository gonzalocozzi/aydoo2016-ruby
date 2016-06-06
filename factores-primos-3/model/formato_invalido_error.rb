class FormatoInvalidoError < StandardError

  def initialize(msg="Ha ingresado un formato invalido. Los formatos aceptados son pretty y quiet. Por favor, intente nuevamente.")
    super
  end

end