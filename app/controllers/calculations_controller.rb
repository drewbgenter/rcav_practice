class CalculationsController < ApplicationController
  def home
  end

  def sq
    @the_number = params[:number].to_f
    @answer = (@the_number)*(@the_number)
  end

  def sqrt
    @the_number = params[:number].to_f
    @answer = Math.sqrt(@the_number)
  end

  def pmt
    @rate = (params[:interest_rate].to_f)/100
    @nper = params[:number_of_payments].to_f
    @pval = params[:present_value].to_f
    @payment = @pval * (@rate * ((1 + @rate) ** @nper) / ((1 + @rate) ** @nper - 1))
  end
end

#def pmt(rate, nper, pv)
#  pv * (rate * ((1 + rate) ** nper) / ((1 + rate) ** nper - 1))
#end
