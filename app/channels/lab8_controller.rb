class Lab8Controller < ApplicationController
  def input
  end

  def output
    n = params[:n].to_i
    if Number.find_by_input(n)
      @result = Number.find_by_input(n).result.split
    else
      if n > 0
        enum = (10**(n - 1)..10**n - 1).lazy.select do |x|
          x.to_s.split('').reduce(0) { |a, e| a + e.to_i**n } == x
        end
        @result = enum.to_a
      else
        @result = []
      end
      Number.create :input => n,
                    :result => @result.join(' ')
    end
  end

  def xml
    @xml = Number.all
    render xml: @xml
  end
end
