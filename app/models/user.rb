class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_one_attached :avatar

         def shopkeeper?
          role == 'shopkeeper'
        end

        def school?
          role == 'school'
        end


end
