class Lb8Controller < ApplicationController
  def enter; end

  def result
    n = params[:val].to_i
    @mas = []
    if n >= 0
      @mas = (0..n).each.select { |x| summ(x % 1000) == summ(x / 1000) }
      @result = 'Полученный массив'
    else @result = 'Ошибка в введенном числе'
    end
  end

  def summ(x)
    x.to_s.chars.sum(&:to_i)
  end
end
