# frozen_string_literal: true

# store information about knight
class Knight
  attr_accessor(:pos, :goal)

  def initialize(start = [0, 0], stop = [7, 7])
    @pos = start
    @goal = stop
  end

  # possible moves, with longest step first
  # 1: [+1, +2]
  def up_r
    return false if pos[0] + 2 > 7 || pos[1] + 1 > 7

    pos[0] += 1
    pos[1] += 2
    pos
  end

  # 2: [+1, +2]
  def r_up
    return false if pos[0] + 2 > 7 || pos[1] + 1 > 7

    pos[0] += 2
    pos[1] += 1
    pos
  end

  # 3 [+2, -1]
  def r_down
    return false if pos[0] + 2 > 7 || pos[1] - 1 < 0

    pos[0] += 2
    pos[1] -= 1
    pos
  end

  # 4 [+1, -2]
  def down_r
    return puts false if pos[0] + 1 > 7 || pos[1] - 2 < 0

    pos[0] += 1
    pos[1] -= 2
    pos
  end

  # 5 [-1, -2]
  def down_l
    return false if pos[0] - 1 < 0 || pos[1] - 2 < 0

    pos[0] -= 1
    pos[1] -= 2
    pos
  end

  # 6 [-2, -1]
  def l_down
    return puts false if pos[0] - 2 < 0 || pos[1] - 1 < 0

    pos[0] -= 2
    pos[1] -= 1
    pos
  end

  # 7 [-2, +1]
  def l_up
    return false if (pos[0] - 2) < 0 || pos[1] + 1 > 7

    pos[0] -= 2
    pos[1] += 1
    pos
  end

  # 8 [-1, +2]
  def up_l
    return false if pos[0] - 1 < 0 || pos[1] + 2 > 7

    pos[0] -= 1
    pos[1] += 2
    pos
  end
end
