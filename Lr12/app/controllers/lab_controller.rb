class LabController < ApplicationController
  def input; end

  def output
    @n = params[:v1].to_i
    @mas = []
    @mas = (0..@n).each.select { |x| summ(x % 1000) == summ(x / 1000) } if @n >= 0
  end

  def summ(x)
    x.to_s.chars.sum(&:to_i)
  end
end