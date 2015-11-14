require 'Item.rb'

RSpec.describe(Item) do
  describe '#addItem' do
    context 'without parameter' do
      subject{Item.new}
      it { expect(subject.name).to eq(nil)}
    end
    context 'without parameter' do
      subject{Item.new("Mac",2000)}
      it { expect(subject.name).to eq("Mac")}
      it { expect(subject.price).to eq(2000)}
    end
    context 'with parameter' do
      subject{Item.new("iPad",1500)}
      it { expect(subject.name).to eq("iPad") }
      it { expect(subject.price).to eq(1500) }

    end
  end
end
