require 'dice'

describe Dice do

  it 'will return the total for all number dice rolled' do
    is_expected.to respond_to(:roll).with(1).argument
  end

end
