class Product < ActiveRecord::Base

	validates :name, presence:{:message=>"El campo esta vacio"}
	validates :description, presence:{:message=>"El campo esta vacio"}
	validates :quantity, presence:{:message=>"El campo esta vacio"}
	validates :cost, presence:{:message=>"El campo esta vacio"}
	validates :cost, presence:{:message=>"El campo esta vacio"}
	


	after_create :save_categories

	has_attached_file :image, :styles=>{:medium=>"512*512#" , :thumb=>"100*100#", :micro=>"50*50#"}

	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

	#validates_attachment :image, 
		#content_type:{content_type:["image/png", "image/jpg"]}
	
	has_many :pro_entries
	has_many :outputs
	has_and_belongs_to_many :categories

	


	#custom setter
	def categories=(value)
		@categories = value
	end

	private
		# se ejecuta este metodo despues de crear el producto
		def save_categories
			@categories.each do |category_id|
				CategoriesProduct.create(categories_id: category_id, products_id: self.id)
			end
		end
	
end
