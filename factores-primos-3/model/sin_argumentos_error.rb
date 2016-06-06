class SinArgumentosError < StandardError

  def initialize(msg="No ha indicado ningun parametro de entrada. Por favor, intente nuevamente.")
    super
  end

end