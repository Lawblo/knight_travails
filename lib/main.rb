# frozen_string_literal: true

require_relative 'board'
require_relative 'knight'

def knight_moves(knight, goal = [0, 0], moves = [], min = 10)
  return false if moves.any?  { |position| knight.pos == position }

  p knight
  moves << knight.pos
  p moves

  return false if moves.length > min
  return moves if knight.pos == goal
end

knight_moves(Knight.new([0, 0]), [7, 7])
