require_relative '../lib/pawn'

describe Pawn do
  describe '#new' do
    subject(:pawn) { described_class.new('white') }

    context 'when class created' do
      it 'creates pawn with properties' do
        expect(pawn.color).to eq('white')
        expect(pawn.look).to eq('♙')
      end
    end
  end
end
