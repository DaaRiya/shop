class Product < ApplicationRecord
  validates_presence_of :title, null: false
  validates_presence_of :price, null: false
end