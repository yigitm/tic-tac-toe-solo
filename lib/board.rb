class View
attr_accessor :picks,:board_item 
  def initialize(picks = [],names =[])
    @picks = picks
    @names = names
  end

def arrays
 @picks = []
 @names = []
end


  def board 
    i = 1
      puts "-------------"  
      while i <= 9
        if i % 3 == 0
          print " #{i} |"
          puts
          puts "-------------"
        else 
          print " #{i} |"   
        end  
       i += 1
      end
  end
  
  def update 
    

  end
  

end

=begin
class Board

create initial board
display board
place player selections with X or O

=end