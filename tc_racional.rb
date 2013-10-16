# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase

  def setup
    @f1 = Fraccion.new(-2,3)
    @f2 = Fraccion.new(6,4)
    @f3 = Fraccion.new(3)
  end
  
  def tear_down
    # Vacío
  end
  
  def test_to_s
    assert_not_equal("6/4", @f2.to_s)
  end
  
  def test_declaracion_entero
    assert_equal("3/1", @f3.to_s)
  end
  
  def test_suma
    # Suma
    assert_equal("5/6", @f1.suma(@f2).to_s)
    assert_equal("9/2", @f3.suma(@f2).to_s)
  end
  
  def test_resta
    assert_equal("13/6", @f2.resta(@f1).to_s)
    assert_equal("-3/2", @f2.resta(@f3).to_s)
  end

  def test_producto
    assert_equal("-2/1", @f1.producto(@f3).to_s)
    assert_equal("9/2", @f2.producto(@f3).to_s)
  end
  
  def test_division
    assert_equal("-2/9", @f1.division(@f3).to_s)
    assert_equal("1/2", @f2.division(@f3).to_s)
  end
  
end
