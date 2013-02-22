class Game
  attr_reader :positions, :over, :winner_name

  def initialize
    @winner_name = nil
    @over = false
    @positions = {'1' => '1', '2' => '2', '3' => "3",
                  '4' => "4", '5' => "5", '6' => "6",
                  '7' => "7", '8' => "8", '9' => "9"}
    # Uncomment for over? test
    # @positions = {'1' => 'X', '2' => 'X', '3' => "X",
    #               '4' => "X", '5' => "X", '6' => "X",
    #               '7' => "X", '8' => "X", '9' => "X"}
  end

  def display_board
    puts "#{@positions['1']} | #{@positions['2']} | #{@positions['3']}"
    puts "----------"
    puts "#{@positions['4']} | #{@positions['5']} | #{@positions['6']}"
    puts "----------"
    puts "#{@positions['7']} | #{@positions['8']} | #{@positions['9']}"
  end

  def choice(place, player)
    if player == "Player 1"
      mark = "X"
    else
      mark = "O"
    end
    
    @positions[place] = mark
  end

  def over?
    if @positions.all? do |key, value| 
      value == "X" || value == "O"
      @over = true
      p "itteration"
    end
    elsif @winner_name != nil
      @over = true
      p "name in over"
    end
  end

  def winner?(player)
    if @positions['1'] == @positions['2'] && @positions['1'] == @positions['3']
      @winner_name = player
      true
    elsif @positions['4'] == @positions['5'] && @positions['4'] == @positions['6']
      @winner_name = player
      true
    elsif @positions['7'] == @positions['8'] && @positions['7'] == @positions['9']
      @winner_name = player
      true
    elsif @positions['1'] == @positions['4'] && @positions['1'] == @positions['7']
      @winner_name = player
      true
    elsif @positions['2'] == @positions['5'] && @positions['2'] == @positions['8']
      @winner_name = player
      true
    elsif @positions['3'] == @positions['6'] && @positions['3'] == @positions['9']
      @winner_name = player
      true
    elsif @positions['1'] == @positions['5'] && @positions['1'] == @positions['9']
      @winner_name = player
      true
    elsif @positions['3'] == @positions['5'] && @positions['3'] == @positions['7']
      @winner_name = player
      true
    else 
      false 
    end
  end
end
