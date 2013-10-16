# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
  
  attr_reader :a, :b
  
  def initialize (a, b=1)
    aux = gcd(a,b)
    @a, @b = a/aux, b/aux
  end
  
  def to_s
    "#@a/#@b"
  end
  
  def suma(other)
    new_b = (@b * other.b) / gcd(@b, other.b) # Se aplica el algoritmo de euclides para obtener, a partir del mcd, el mcm, que será el nuevo denominador.
    new_a = ((@a * new_b) / @b) + ((other.a * new_b) / other.b) # Se obtienen los nuevos numeradores equivalentes de acuerdo al denominador calculado, y se suman.
    aux = gcd(new_a, new_b)
    Fraccion.new(new_a / aux, new_b / aux);
  end
  
  def resta(other)
    new_b = (@b * other.b) / gcd(@b, other.b) # Se aplica el algoritmo de euclides para obtener, a partir del mcd, el mcm, que será el nuevo denominador.
    new_a = ((@a * new_b) / @b) - (other.a * new_b / other.b) # Se obtienen los nuevos numeradores equivalentes de acuerdo al denominador calculado, y se restan.
    aux = gcd(new_a, new_b)
    Fraccion.new(new_a / aux, new_b / aux);
  end
  
  def producto(other)
    new_a, new_b = @a * other.a, @b * other.b
    aux = gcd(new_a, new_b)
    Fraccion.new(new_a / aux, new_b / aux)
  end
  
  def division(other)
    new_a, new_b = @a * other.b, @b * other.a
    aux = gcd(new_a, new_b)
    Fraccion.new(new_a / aux, new_b / aux)
  end
  
end
