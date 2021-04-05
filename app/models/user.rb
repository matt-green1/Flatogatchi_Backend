class User < ApplicationRecord
    has_one :user_monster, dependent: :destroy 
    has_one :monster, through: :user_monster

    validates :email, uniqueness: true
    
end
