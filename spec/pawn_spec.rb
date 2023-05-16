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

  describe '#move_once' do
    subject(:pawn) { described_class.new('white') }

    context 'when pawn receives input () to move once' do
      it 'changes position on board' do
        
      end
    end
  end


end
