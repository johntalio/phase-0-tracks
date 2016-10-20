class TodoList
	
	def initialize(items)
		@list_items = items
	end

	def get_items
		@list_items
	end

	def add_item(new_item)
		@list_items << new_item
	end

	def delete_item(old_item)
		@list_items.delete(old_item)
	end

	def get_item(index)
		@list_items[index]
	end

end