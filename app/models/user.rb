class User < ApplicationRecord
    has_many :rides, dependent: :destroy
    has_secure_password

    private
    def set_defaults 
    end
end


