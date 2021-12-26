# frozen_string_literal: true

# store information about knight
class Knight
  attr_accessor(:pos)

  def initialize(position = [0, 0])
    @pos = position
  end

  # possible moves, with longest step first
  # 1: [+1, +2]
  def up_r
    pos[0] += 1
    pos[1] += 2
    pos
  end

  def up_r_check
    pos[0] + 2 > 7 || pos[1] + 1 > 7 ? false : true
  end

  # 2:location [+1, +2]
  def r_up
    pos[0] += 2
    pos[1] += 1
    pos
  end

  def r_up_check
    pos[0] + 2 > 7 || pos[1] + 1 > 7 ? false : true
  end

  # 3 [+2, -1]
  def r_down
    pos[0] += 2
    pos[1] -= 1
    pos
  end

  def r_down_check
    pos[0] + 2 > 7 || pos[1] - 1 < 0 ? false : true
  end

  # 4 [+1, -2]
  def down_r
    pos[0] += 1
    pos[1] -= 2
    pos
  end

  def down_r_check
    pos[0] + 1 > 7 || pos[1] - 2 < 0 ? false : true
  end

  # 5 [-1, -2]
  def down_l
    pos[0] -= 1
    pos[1] -= 2
    pos
  end

  def down_l_check
    pos[0] - 1 < 0 || pos[1] - 2 < 0 ? false : true
  end

  # 6 [-2, -1]
  def l_down
    pos[0] -= 2
    pos[1] -= 1
    pos
  end

  def l_down_check
    pos[0] - 2 < 0 || pos[1] - 1 < 0 ? false : true
  end

  # 7 [-2, +1]
  def l_up
    pos[0] -= 2
    pos[1] += 1
    pos
  end

  def l_up_check
    (pos[0] - 2) < 0 || pos[1] + 1 > 7 ? false : true
  end

  # 8 [-1, +2]
  def up_l
    pos[0] -= 1
    pos[1] += 2
    pos
  end

  def up_l_check
    pos[0] - 1 < 0 || pos[1] + 2 > 7 ? false : true
  end
end
