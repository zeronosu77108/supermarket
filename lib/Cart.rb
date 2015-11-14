class Cart
  def initialize
    @items = []
  end

  def add(item)
    @items << item
  end

  def total
    t = 0
    @items.each do |item|
      t += item.price
    end
    t
  end
end
