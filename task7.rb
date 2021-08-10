# frozen_string_literal: true

require 'date'
def weeknds(&block)
  year = Date.today.year
  weeknd = Date.new(year).step(Date.new(year, -1, -1)).select { |d| d.sunday? || d.saturday? }
  weeknd.each(&block)
end
weeknds { |i| puts "Выходные дни в году: #{i.strftime('%d.%m')}" }
