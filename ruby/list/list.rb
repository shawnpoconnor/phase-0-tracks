class TodoList
  attr_reader :chores
  def initialize(chores)
    @chores = chores
  end

  def get_items
    @chores
  end

  def add_item(item)
    @chores << item
  end

  def delete_item(item_to_delete)
    i = 0
    while i < @chores.length
      if @chores[i] == item_to_delete
          @chores.delete_at(i)
          break
        end
        i+=1
      end
    end

    def get_item(item_index)
      @chores[item_index]
    end
end