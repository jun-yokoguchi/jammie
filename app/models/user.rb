class User < ActiveRecord::Base
  before_save { self.email = self.email.downcase }
  validates :username, presence: true, length: { maximum: 50 }
  #validates :email, presence: true, length: { maximum: 255 },
  #                  format: { with: VALID_EMAIL_REGEX },
  #                  uniqueness: { case_sensitive: false }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :omniauthable#, omniauth_providers: [:twitter]
end
