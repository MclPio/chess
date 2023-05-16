require_relative '../lib/board'

describe Board do
  describe '#new' do
    subject(:board) { described_class.new }

    context 'when new instance is created' do
      it 'makes an 8 * 8 array with nil as default value' do
        expect(board.board).to eq([[nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil]])
      end
    end
  end

  describe '#algebraic_to_indices' do
    subject(:board) { described_class.new }

    context 'when given h8' do
      it 'returns [0][7]' do
        expect(board.algebraic_to_indices('h8')).to eq([[0],[7]])
      end
    end

    context 'when given h1' do
      it 'returns [[7], [7]]' do
        expect(board.algebraic_to_indices('h1')).to eq([[7],[7]])
      end
    end

    context 'when given a1' do
      it 'returns [[7], [0]]' do
        expect(board.algebraic_to_indices('a1')).to eq([[7],[0]])
      end
    end

    context 'when given a8' do
      it 'returns [[0], [0]]' do
        expect(board.algebraic_to_indices('a8')).to eq([[0],[0]])
      end
    end
  end
end
