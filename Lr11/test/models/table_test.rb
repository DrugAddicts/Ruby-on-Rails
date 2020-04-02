require 'test_helper'

class TableTest < ActiveSupport::TestCase
  test 'should input' do
    @a = rand(10_000)
    @result = []
    if res = Table.find_by_a(@a)
      @result = ActiveSupport::JSON.decode(res.result)
    elsif @a >= 0
      @result = (0..@a).each.select { |x| sum?((x % 1000), (x / 1000)) }
      res = Table.create a: @a, result: @result.to_json
      res.save
    end
    res = Table.find_by_a(@a)
    assert_not_equal(nil, res)
    assert_equal(false, Table.create(a: @a, result: ActiveSupport::JSON.encode(@result)).valid?)
  end

  def sum?(x, y)
    (x / 100 + (x % 100) / 10 + (x % 100) % 10) == (y / 100 + (y % 100) / 10 + (y % 100) % 10)
  end
end
