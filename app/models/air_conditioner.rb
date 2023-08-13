class AirConditioner < Device
  def temperature = registers[1] / 10.to_d

  def humidity = registers[2]

  def heating = coils[1]

  def cooling = coils[2]

  def humidifying = coils[3]

  def dehumidifying = coils[4]
end
