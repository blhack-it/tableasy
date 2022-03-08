module Tableasy
  class Table
    attr_reader :rows

    def initialize(rows=[])
      @rows = rows
    end

    def add_row(cells, html = {})
      @rows << Row.new(cells.compact, html)
    end
  end
end
