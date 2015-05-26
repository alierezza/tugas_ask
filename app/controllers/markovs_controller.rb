class MarkovsController < ApplicationController

  def index
    @markovs = Markov.all
    @last_matrix = ''
    if params[:times]

      total = 0
      arr = []
      arr1 = []
      arr2 = []

      total = @markovs[0].platinum + @markovs[0].dedicated + @markovs[0].localloop
      
      arr << @markovs[0].platinum.to_f / total
      arr << @markovs[0].dedicated.to_f / total
      arr << @markovs[0].localloop.to_f / total

      total1 = @markovs[1].platinum + @markovs[1].dedicated + @markovs[1].localloop
      arr1 << @markovs[1].platinum.to_f / total1
      arr1 << @markovs[1].dedicated.to_f / total1
      arr1 << @markovs[1].localloop.to_f / total1
        
      total2 = @markovs[2].platinum + @markovs[2].dedicated + @markovs[2].localloop
      arr2 << @markovs[2].platinum.to_f / total2
      arr2 << @markovs[2].dedicated.to_f / total2
      arr2 << @markovs[2].localloop.to_f / total2
      # c = "#{@markovs[2].platinum.to_f / total2}, #{@markovs[2].dedicated.to_f / total2}, #{@markovs[2].localloop.to_f / total2}"

      a = Matrix[arr, arr1, arr2]
      
      b = a**params[:times].to_i

      @last_matrix = b.to_a.each {|r| puts r.inspect}
    end

  end
end
