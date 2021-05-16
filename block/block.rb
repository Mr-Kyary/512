class Block < Sprite
  @@board_pos = [
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0]
  ]
  
  def initialize
    genAtx = [120, 220, 320, 420]
    genAty = [40, 140, 240, 340]
    @x = genAtx.sample
    @y = genAty.sample
  end

  def cal_pos(num)
    ##テスト機能 要書き換え。。。。
    if (num == 120) || (num == 220) || (num == 320) || (num == 420)
      if num ==  120
        return 0
      elsif num ==  220
        return 1
      elsif num ==  320
        return 2
      else
        return 3
      end
    else
      if num ==  40
        return 0
      elsif num ==  140
        return 1
      elsif num ==  240
        return 2
      else
        return 3
      end
    end
  end

  def create
    Window.draw_box_fill(@x, @y, @x + 100, @y + 100, [179, 154, 18])
    @@board_pos[cal_pos(@x)][cal_pos(@y)] = 1

    Window.draw_font(0, 0, @@board_pos, Font.default, color: C_WHITE)
  end
end