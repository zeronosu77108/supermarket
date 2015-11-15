require 'item'
require 'item_database'

RSpec.describe(ItemDatabase) do
  describe '#find' do
    subject(:db) do
      db = ItemDatabase.new
      db.register(Item.new('Apple',100))
      db
    end
    it 'returns found item' do
      item = db.find('Apple')
      expect(item).to eq('Apple')
    end
  end
end
