class TodoList
attr_accessor :list	

	def initialize(things_to_do)
		@list = things_to_do
		
	end

	def add_item(thing_to_add)
		@list << thing_to_add
	end

	def get_items
		p @list

	end

	def delete_item(item_to_delete)
		@list.delete(item_to_delete)
	end

	def get_item(x)
		p @list[x]
	end
end