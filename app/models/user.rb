class User < ApplicationRecord
  has_many :orders, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :room, through: :orders
  before_save{self.email = email.downcase}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name, presence: true, length: {maximum: Settings.user.name.maximum}
  validates :email, presence: true,
    length: {maximum: Settings.user.email.maximum},
    format: {with: VALID_EMAIL_REGEX},
    uniqueness: {case_sensitive: false}
  validates :phone, presence: true,
    length: {maximum: Settings.user.phone.maximum}
  has_secure_password
  validates :password, presence: true,
    length: {minimum: Settings.user.password.minimum}
end
