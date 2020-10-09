class Member < ApplicationRecord
    has_many :posts
    validates :name, presence: true, length: { minimum: 2 }, allow_blank: false, uniqueness: true
    validates :email, confirmation: true, presence: true, uniqueness: true, allow_blank: false
    validates :password, presence: true, length: { minimum: 10 }, allow_blank: false
end
