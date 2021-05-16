require 'dxopal'
require_remote './background/grid.rb'
require_remote './block.rb'
include DXOpal
# require_relative ”./background.rb”

blocks = []

Window.load_resources do
  Window.bgcolor = C_BLACK

  Window.loop do
    grid

    blocks << Block.new
    blocks.each do |b|
      b.create
    end

    # Window.draw_font(0, 0, "Hello!", Font.default, color: C_WHITE)
  end
end