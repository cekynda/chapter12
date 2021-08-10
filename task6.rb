# frozen_string_literal: true

require 'date'

def week(number, &block)
  days_of_week = [Date.commercial(2021, number, 1),
                  Date.commercial(2021, number, 2),
                  Date.commercial(2021, number, 3),
                  Date.commercial(2021, number, 4),
                  Date.commercial(2021, number, 5),
                  Date.commercial(2021, number, 6),
                  Date.commercial(2021, number, 7)]
  days_of_week.each(&block)
end

week(32) { |i| puts i }
