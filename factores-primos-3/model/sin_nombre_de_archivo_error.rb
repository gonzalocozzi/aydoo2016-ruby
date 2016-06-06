class SinNombreDeArchivoError < StandardError

  def initialize(msg="No ha especificado el nombre del archivo a escribir. Por favor, intente nuevamente.")
    super
  end

end