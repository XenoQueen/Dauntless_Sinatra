class Slayer < ActiveRecord::Base
    has_secure_password
    has_many :behemoths
end