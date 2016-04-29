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
end