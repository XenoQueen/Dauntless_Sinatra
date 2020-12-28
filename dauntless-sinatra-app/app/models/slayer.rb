class User < ActiveRecord::Base[5.2]
    has_secure_password
    has_many :behemoths
end