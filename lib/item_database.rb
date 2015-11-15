require 'item'
class ItemDatabase
  def initialize
    @items = Hash.new()
  end

  def register(item)
    @items.store(item.name,item.price)
  end

  def find(name)
    name if @items.has_key?(name)
  end
end
