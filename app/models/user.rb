class User < ApplicationRecord
  validates_presence_of :name, null: false
  validates_presence_of :login ,uniqueness: true
  validates_presence_of :password, null: false
  validates_presence_of :role, null: false
end