class Usuario < ApplicationRecord
  # attr_accessible :email, :password, :password_confirmation

  attr_accessor :password
  attr_accessor :old_password
  before_save :encrypt_password

  validates_confirmation_of :password, message: "La confirmación no coincide con la contraseña ingresada."
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
  validate :change_pwd

  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end

protected
  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

  def change_pwd
    if not old_password.nil? && password_hash != BCrypt::Engine.hash_secret(old_password, password_salt)
      errors.add(:old_password, "Debe ingresar la contraseña actual.")
      return false
    else
      return true
    end
  end
end
