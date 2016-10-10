require File.expand_path(File.dirname(__FILE__) + '/neo')

class DiceSet
  
#   attr_reader :dice
   
   def roll(size)
     #Array.new(size, 3)
     @dice = Hash.new(3)
     size.times do |i|
       @dice[i] = i
     end
     @dice
   end
  
  def values
    @dice.values
  end
  
  def keys
    @dice.keys
  end
 end


class AboutDiceProject < Neo::Koan
  def test_can_create_a_dice_set
    dice = DiceSet.new
    assert_not_nil dice
    dice.roll(5)
    
    puts dice.values.to_s
    
    assert dice.values.is_a?(Array), "should be an array"
    assert_equal 5, dice.values.size
  end
end
