class Alumno
  def initialize(nombre, nota1, nota2, nota3, nota4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @nota3 = nota3
    @nota4 = nota4
  end

  def self.read_file(notas = 'notas.txt')#notas, seria nuestro argumento creado
    alumnos = []
    data = []
    File.open(notas, 'r') { |file| data = file.readlines }# notas es el argumento a llamar
    data.each do |alumno|
      alumnos << Alumno.new(*alumno.split(', '))
    end
    print alumnos#intruccion para imprimir alumnos
  end
end# El archivo debe estar dentro de la clase

Alumno.read_file('notas.txt')#para llamar el metodo de clase, se tiene que poner la clase y el nombre del archivo a llamar

# class Alumno
#   def initialize(nombre, nota1, nota2, nota3, nota4)
#     @nombre = nombre
#     @nota1 = nota1
#     @nota2 = nota2
#     @nota3 = nota3
#     @nota4 = nota4
#   end
# end
#
# alumnos = []
# data = []
# File.open('notas.txt', 'r') { |file| data = file.readlines }
# data.each do |alumno|
#   alumnos << Alumno.new(*alumno.split(', '))
# end
#
# print alumnos



# Se pide:
# Crear un método de clase llamado read_file que reciba como argumento el nombre
# del archivo (por defecto debe ser 'notas.txt') y devuelva la colección de objetos. El
# método debe alojar las instrucciones que se encuentran después de la clase.
# Finalmente imprimir la colección de objetos generada.
# Hint: Debes reemplazar el argumento de File.open con el nombre del
# argumento del método read_file"
