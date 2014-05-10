class CalculationsController < ApplicationController
  def home
  end

  def sq
    @the_number = params[:number].to_f
    @answer = (@the_number)*(@the_number)
    @answeri = @answer.to_i
    @the_numberi = @the_number.to_i
  end

  def sqrt
    @the_number = params[:number].to_f
    @answer = Math.sqrt(@the_number)
    @answeri = @answer.to_i
    @the_numberi = @the_number.to_i
  end

  def pmt
    @rate = (params[:interest_rate].to_f)/100
    @nper = params[:number_of_payments].to_f
    @pval = params[:present_value].to_f
    @payment = @pval * (@rate * ((1 + @rate) ** @nper) / ((1 + @rate) ** @nper - 1))
    @answer = @payment.to_i
  end
end

#def pmt(rate, nper, pv)
#  pv * (rate * ((1 + rate) ** nper) / ((1 + rate) ** nper - 1))
#end
