class User < ApplicationRecord
  has_secure_password
  validates_uniqueness_of :email
  after_create :create_token

  private

  def create_token
    token = (0..99).to_a.sample(5).join
    self.token = token
    save
  end
end
