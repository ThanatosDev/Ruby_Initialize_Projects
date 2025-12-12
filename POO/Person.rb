class Person
  attr_accessor :name, :age # de esta forma generaremos un getter y un setter en el lenguaje

  # con definir la funnción initialize generaremos un método constructor para
  # el objeto que estamos generando
  def initialize(name,age)
    @age = age # similar a definir en java := this.age = age
    @name = name
  end

  def hello
    # como hello definiremos una función el cual retornará
    # un saludo por parte de la persona que hemos registrado en el objeto persona
    "hello i'm #{name} and i'm #{age} years old!"
  end
end
