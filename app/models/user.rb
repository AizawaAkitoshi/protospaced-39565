class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         validates :name, presence: true
         validates :email, presence: true
         validates :password, presence: true
         validates :profile, presence: true
         validates :occupation, presence: true
         validates :position, presence: true

         has_many :prototypes
         has_many :comments
end



# | Column             | Type   | Options     |
# | ------------------ | ------ | ----------- |
# | name               | string | null: false, unique: true |
# | email              | string | null: false |
# | encrypted_password | string | null: false |
# | profile            | text   | null: false |
# | occupation         | text   | null: false |
# | position           | text   | null: false |
