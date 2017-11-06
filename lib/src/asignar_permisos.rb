require File.expand_path('../../../config/environment',  __FILE__)
require 'permiso'
require 'rol'
require 'usuario'

# usuarios -> index, new, create, edit, update, reset_pwd
id_usuario = 1
nombre_rol = "Administrador"
nombre_permiso = "Edición de usuarios"
controller_permiso = "usuarios"
action_permiso = "reset_pwd"

r = Rol.find_by_nombre(nombre_rol)
if r
	puts "Ya existe el rol #{nombre_rol}"
else
	r = Rol.create(nombre: nombre_rol)
	puts "Se creó el rol"
end

p = Permiso.where(nombre: nombre_permiso, controller: controller_permiso, action: action_permiso)
if p.any?
	puts "Ya existe el permiso #{nombre_permiso} con la acción #{controller_permiso}\\#{action_permiso}"
else
	p = Permiso.create(nombre: nombre_permiso, controller: controller_permiso, action: action_permiso)
	puts "Se creó el permiso"
end

if r.permisos.exists?(p)
	puts "El permiso ya está asignado al rol"
else
	r.permisos << p
	puts "Se asignó el permiso al rol"
end

u = Usuario.find(1)
if not u
	puts "No existe un usuario con id: #{id_usuario}"
	return
end

if u.roles.exists?(r)
	puts "El rol ya está asignado al usuario #{u.nombre}"
else
	u.roles << r
	puts "Se asignó el rol al usuario #{u.nombre}"
end

puts "Fin.-"