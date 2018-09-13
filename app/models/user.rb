class User < ApplicationRecord

  has_secure_password

  def admin?
    self.role == 'admin'
  end

  def school_worker?
    self.role == 'school_worker'
  end

end
