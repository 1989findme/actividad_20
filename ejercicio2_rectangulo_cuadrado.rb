module Formula
  def perimetro
    perimetro = @lado * 2 + @ancho * 2
  end

  def area
    area = @lado * @ancho
  end
end

class Rectangulo
  attr_reader :lado , :ancho
  include Formula
  def initialize(lado, ancho)
    @lado = lado
    @ancho = ancho
  end

  def lados_rectangulo
    @lado
    @ancho
  end
end

class Cuadrado
  attr_reader :lado# Incluir getter para cceder a varia
  include Formula
  def initialize(lado)
    @lado = lado
    @ancho = lado
  end

  def lados_cuadrado
    @lado
  end
end

c = Cuadrado.new(20)
puts "El lado del cuadrado es #{c.lados_cuadrado}"
puts "El perimetro del cuadrado es #{c.perimetro}"

r = Rectangulo.new(10 , 2)
puts "Los lados del rectangulo son #{r.lado} y #{r.ancho}"#poner getter para acceder a datos desde afuera.
puts "El perimetro del rectangulo es #{r.perimetro}"

# Se tienen las clases Rectangulo y Cuadrado cuyos constructores reciben las medidas de
# los lados correspondientes.
# Se pide:
# Agregar un método de instancia llámado lados en ambas clases. El método debe
# imprimir un string con las medidas de los lados.
# Crear un módulo llamado Formula.
# Dentro del módulo Formula crear un método llamado perimetro que reciba dos
# argumentos (lados) y devuelva el perímetro.
# Dentro del módulo Formula crear un método llamado area que reciba dos
# argumentos (lados) y devuelva el área.
# Implementar -mediante Mixin- el módulo en las clases Rectangulo y Cuadrado.
# Instanciar un Rectangulo y un Cuadrado.
# Imprimir el área y perímetro de los objetos instanciados utilizando el método del
# módulo implementado
