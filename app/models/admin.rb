=begin
  TODO Build validations for the email
=end

class Admin < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation
  
  attr_accessor :password
  validates :password, 
      :presence => true,
      :confirmation => true,
      :length => { :minimum => 5, :maximum => 40 }
  validates :email,
      :presence => true
  
  before_save :encrypt_password
  
  def self.authenticate(email, password)
    admin = find_by_email(email.downcase)
    if admin && admin.password_hash == BCrypt::Engine.hash_secret(password, admin.password_salt)
      admin
    else
      nil
    end
  end

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
end
