class User < ApplicationRecord
  # Devise modules for authentication
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Active Storage avatar attachment
  has_one_attached :avatar

  # Role helper methods
  def shopkeeper?
    role == 'shopkeeper'
  end

  def school?
    role == 'school'
  end

  def customer?
    role == 'customer'
  end

  has_one :cart, dependent: :destroy
  after_create :create_cart

end
