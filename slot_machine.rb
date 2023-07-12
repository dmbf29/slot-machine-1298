class SlotMachine
  # options = {
  #   '🤩' => 50
  # }
  OPTIONS = ['🍒', '7', '🛎', '⭐️', '🤩']
  #           0    1   2    3     4
  #           1    2   3    4     5 index + 1 * 10

  def score(reels)
    if reels.uniq.length == 1
      # score?
      index = OPTIONS.index(reels.first)
      return (index + 1) * 10
    elsif reels.uniq.length == 2 && reels.include?('🤩')
      # check if reels include joker + 2 of the same .uniq length = 2 (+ 1 joker included)
      index = OPTIONS.index(reels.sort[1])
      return (index + 1) * 5
    else
      return 0
    end
  end
end
# create an instance method for score with reels
# create an array for reels
# check if all reels are the same using .uniq length should be 1
# check if reels include joker + 2 of the same .uniq length = 2 (+ 1 joker included)
# create hash of score options e.g. 1 joker = 50,
