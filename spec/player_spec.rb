require 'player'
require 'ship'

describe Player do

  let(:player) {Player.new  }
  let(:ship) { Ship.new     }

  before(:each) do
    Cell.class_variable_set(:@@count, 0)
  end

  it 'shoud be able to place a ship on board' do
    expect(player.place(ship, "a1", "horizontal")).to eq(true)
  end

end