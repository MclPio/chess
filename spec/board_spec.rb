require_relative '../lib/board'

describe Board do
  describe '#new' do
    subject(:board) { described_class.new }

    context 'when new instance is created' do
      it 'makes an 8 * 8 array with nil as default value' do
        expect(board.board_array).to eq([[nil, nil, nil, nil, nil, nil, nil, nil],
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
end
