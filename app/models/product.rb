class Product < ActiveRecord::Base
  has_many :photos, :dependent => :destroy
  accepts_nested_attributes_for :photos, :allow_destroy => true
  
  validates_presence_of :name, :price, :description
end
