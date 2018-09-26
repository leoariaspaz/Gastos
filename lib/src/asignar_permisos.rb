# Debe estar creado el usuario Administrador

# Rol.delete_all
# Permiso.delete_all

r = Rol.find_by_nombre("Administrador")
if not r
	puts "Creando el rol Administrador"
	r = Rol.create! nombre: "Administrador"
end

permisos = []
# permisos del controlador Usuarios
permisos << Permiso.new(nombre: "Listado de usuarios", controller: "usuarios", action: "index")
permisos << Permiso.new(nombre: "Nuevo usuario", controller: "usuarios", action: "new")
permisos << Permiso.new(nombre: "Grabación de nuevo usuario", controller: "usuarios", action: "create")
permisos << Permiso.new(nombre: "Edición de usuarios", controller: "usuarios", action: "edit")
permisos << Permiso.new(nombre: "Grabación de edición de usuarios", controller: "usuarios", action: "update")
permisos << Permiso.new(nombre: "Resetear contraseña", controller: "usuarios", action: "reset_pwd")

permisos.each do |p|
	if not Permiso.where(nombre: p.nombre, controller: p.controller, action: p.action).any?
		puts "Creando el permiso #{p.nombre} => #{p.controller}##{p.action}"
		p.save!
	end
end

Permiso.all.each do |p|
	if not r.permisos.where(nombre: p.nombre, controller: p.controller, action: p.action).any?
		puts "Asignando el permiso #{p.nombre} al rol #{r.nombre}"
		r.permisos << p
	end
end

u = Usuario.find_by_nombre("Administrador")
if not u.roles.find_by_nombre(r.nombre)
	puts "Asignando el rol #{r.nombre} al usuario #{u.nombre}"
	u.roles << r
end

puts "Fin del script.-"
