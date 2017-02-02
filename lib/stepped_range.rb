# frozen_string_literal: true

#
class SteppedRange
  include Enumerable

  def each
    current = start
    while current <= stop
      yield current
      current += step
    end
  end

  attr_reader :start, :stop, :step
  private :start, :stop, :step

  # SteppedRange.new(start: 0, stop: 10, step: 3)
  # def initialize(start:, stop:, step: 1)
  #
  # OR
  #
  # SteppedRange.new(0, 10, 3)
  def initialize(start, stop, step)
    @start = start
    @stop = stop
    @step = step
  end
end
