class Lb9Controller < ApplicationController
  def input; end

  def view
    n = params[:val].to_i
    @mas = (0..n).each.select { |x| summ(x % 1000) == summ(x / 1000) }
    respond_to do |format|
      format.html
      format.json do
        render json:
            { type: @mas.class.to_s, value: @mas }
      end
    end
  end

  def summ(x)
    x.to_s.chars.sum(&:to_i)
  end
end
