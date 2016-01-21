class Output < ActiveRecord::Base
	validates :quantity_ouput, presence:{:message=>"El campo esta vacio"}
	belongs_to :products
	
end
