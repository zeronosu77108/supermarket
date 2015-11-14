require 'item'
require 'Cart.rb'

RSpec.describe(Cart) do
  describe '#total' do
    it 'returns sum of item prices' do
      expect(subject.total).to eq(0)
      subject.add(Item.new("apple",100))
      expect(subject.total).to eq(100)
      subject.add(Item.new("banana",50))
      expect(subject.total).to eq(150)
    end
  end
end
