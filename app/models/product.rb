class Product < ActiveRecord::Base
  attr_accessible :name, :price_in_cents, :description
end
