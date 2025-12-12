# con esta instancia estaremos intentando llamar a un documento RELATIVO al archivo que estamos
# utilizando, esto se diferencia a la instancia 'require' sola que usaremos para llamar
# gemas o demás funcionalidades dentro del repertorio de Ruby
require_relative 'Person'

# de esta manera estamos definiendo a P como un nuevo objeto persona, y por esa razón
# su instanciación deberá ser incializada
p = Person.new("nicolas",19)

# y ahora llamando a una de las funciones del objeto persona, imprimieros el saludo
# que hemos programado anteriormente
puts p.hello

