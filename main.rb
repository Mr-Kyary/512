require 'dxopal'
include DXOpal
# require_relative ”./background.rb”

def background
  Window.draw_box_fill(0, 0, Window.width, Window.height, [9, 9, 9])
end

def grid
  #外枠
  Window.draw_line(120, 40, 520, 40, [154, 213, 202])
  Window.draw_line(120, 440, 520, 440, [154, 213, 202])
  Window.draw_line(120, 40, 120, 440, [154, 213, 202])
  Window.draw_line(520, 40, 520, 440, [154, 213, 202])

  #中横
  Window.draw_line(120, 40, 520, 40, [154, 213, 202])
  Window.draw_line(120, 140, 520, 140, [154, 213, 202])
  Window.draw_line(120, 240, 520, 240, [154, 213, 202])
  Window.draw_line(120, 340, 520, 340, [154, 213, 202])

    #中縦
    Window.draw_line(120, 40, 120, 440, [154, 213, 202])
    Window.draw_line(220, 40, 220, 440, [154, 213, 202])
    Window.draw_line(320, 40, 320, 440, [154, 213, 202])
    Window.draw_line(420, 40, 420, 440, [154, 213, 202])
end

Window.load_resources do
  Window.bgcolor = C_BLACK

  Window.loop do
    background
    grid
    Window.draw_font(0, 0, "Hello!", Font.default, color: C_WHITE)
  end
end