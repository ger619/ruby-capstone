require_relative '../game'

describe 'Unit Tests for Game Class' do
  before :each do
    @game = Game.new('Yes', '2020', '2005')
  end

  context 'initialize object' do
    it 'should be an instance of Game' do
      expect(@game).to be_instance_of Game
    end

    it 'should not be an instance of Item' do
      expect(@game).not_to be_instance_of Item
    end

    it 'should be a kind of Item' do
      expect(@game).to be_kind_of Item
    end
  end

  context 'Multiplayer Game' do
    it 'should be "Yes"' do
      expect(@game.multiplayer).to eql 'Yes'
    end
  end

  context 'when was game last played' do
    it 'should be "2020"' do
      expect(@game.last_played_at).to eql '2020'
    end

    context 'when was game published' do
        it 'should be "2005"' do
          expect(@game.publish_year).to eql '2005'
        end
    end
  end
end