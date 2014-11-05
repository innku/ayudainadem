puts "Creación de usuarios"
admin = User.find_or_create_by(email: 'admin@ejemplo.com')
admin.password = 'password'
admin.add_role :admin
admin.save!

agente = User.find_or_create_by(email: 'agente@ejemplo.com')
agente.password = 'password'
agente.add_role :agente
agente.save!

agente2 = User.find_or_create_by(email: 'agente2@ejemplo.com')
agente2.password = 'password'
agente2.add_role :agente
agente2.save!

usuario = User.find_or_create_by(email: 'usuario@ejemplo.com')
usuario.password = 'password'
usuario.save!

usuario2 = User.find_or_create_by(email: 'usuario2@ejemplo.com')
usuario2.password = 'password'
usuario2.save!

usuario3 = User.find_or_create_by(email: 'usuario3@ejemplo.com')
usuario3.password = 'password'
usuario3.save!
puts "Usuarios creados!"

puts "Fin de la creación de datos de prueba"
