class Toilet < Device
  def collect = registers[1]

  def cleaning = coils[1]
end
