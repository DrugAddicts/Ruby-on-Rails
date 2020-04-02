class Lb11Controller < ApplicationController
  def input; end

  def output
    @a = params[:val].to_i
    @@pered = @a
    @result = []
    if res = Table.find_by_a(@a)
      @result = JSON.parse(res.result)
    elsif @a >= 0
      @result = (0..@a).each.select { |x| summ(x % 1000) == summ(x / 1000) }
      res = Table.create a: @a, result: @result.to_json
      res.save
    end
  end

  def summ(x)
    x.to_s.chars.sum(&:to_i)
  end

  def results
    @result = Table.find_by_a(@@pered)
    res = JSON.parse(@result.result)
    render xml: res
  end
end
