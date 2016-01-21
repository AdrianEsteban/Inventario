class ProEntry < ActiveRecord::Base
	validates :quantity_input, presence:{:message=>"El campo esta vacio"}
	belongs_to :products
	
end
