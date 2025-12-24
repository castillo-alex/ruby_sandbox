# frozen_string_literal: true

require 'spec_helper'

RSpec.describe TicTacToe::Game do
  subject(:game) { described_class.new }

  describe '#tile_writable?' do
    context 'when the tile is empty' do
      it 'returns true' do
        expect(game.tile_writable?(row: 0, col: 0)).to be(true)
      end
    end

    context 'when the tile is out of bounds' do
      it 'returns false' do
        expect(game.tile_writable?(row: 72, col: 72)).to be(false)
      end
    end

    context 'when the tile has already been marked' do
      before do
        game.mark_tile(row: 1, col: 1, mark: 'X')
      end

      it 'returns false' do
        expect(game.tile_writable?(row: 1, col: 1)).to be(false)
      end
    end
  end
end
