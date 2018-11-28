require 'dice'

describe Dice do

  it { is_expected.to respond_to(:roll) }

  it '.roll returns an integer in the range 1-6' do
    dice = Dice.new
    expect(dice.roll).to be_between(1, 6)
  end

  it { is_expected.to respond_to(:how_many_dice) }

  it '.how_many_dice records number of dice rolled' do
    expect(subject.how_many_dice(Integer)).to eq Integer
  end

  it { is_expected.to respond_to(:record_rolls) }

end
