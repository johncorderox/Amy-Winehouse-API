class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  before_create :generate_api_key

  validates :api_token, uniqueness: true
  validates :email, uniqueness: { case_sensitive: false }

  private

  def generate_api_key
    self.api_token = loop do
      token = SecureRandom.hex
      break token unless self.class.exists?(api_token: token)
    end
  end
end
