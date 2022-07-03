# frozen_string_literal: true

require_relative "data_fake/version"

# Data Fake Module
module DataFake
  class Error < StandardError; end
  @count = 0

  class Error < StandardError; end

  class << self
    def fake_str
      @count += 1
      "FakeString#{@count}"
    end

    def fake_number(range = 0)
      rand range
    end

    def fake_integer(digit = 2)
      return 0 if digit.zero?
      return rand(0..9) if digit == 1

      rand("1#{repeat_number(0, digit - 1)}".to_i..repeat_number(9, digit).to_i)
    end

    def fake_bool
      bool = rand 0..1
      return false if bool.zero?

      true
    end

    private

    def repeat_number(number, times)
      (number.to_s * times).to_i
    end
  end
end
