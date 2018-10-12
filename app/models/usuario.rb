class Usuario < ApplicationRecord
  EstadosUsuario = [["Habilitado", 1], ["Baja", 0]]

  belongs_to :empresa, :class_name => "Empresa", :foreign_key => "empresa_id"
  has_and_belongs_to_many :roles
  has_many :movimientos

  attr_accessor :password
  attr_accessor :current_password
  cattr_accessor :current_user, instance_writer: false, instance_reader: false

  before_save :encrypt_password

  validate :change_pwd
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :nombre, :email
  validates_confirmation_of :password, message: "no coincide con la nueva contraseña."

  def self.authenticate(email, password)
    user = find_by_email_and_estado(email, 1) #sólo usuarios habilitados
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end

  def transacciones
    Transaccion.where(empresa_id: empresa_id)
  end

  def cuentas
    Cuenta.where(empresa_id: empresa_id)
  end

  def tipos_transacciones
    TipoTransaccion.where(empresa_id: empresa_id)
  end

protected
  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

  def change_pwd
    if current_password && password_salt &&
        password_hash != BCrypt::Engine.hash_secret(current_password, password_salt)
      errors.add(:current_password, "no es correcta.")
    end
  end
end
