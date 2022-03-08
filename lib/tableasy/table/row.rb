module Tableasy
  class Table
    class Row
      attr_reader :cells, :html

      def initialize(cells, html={})
        @cells = cells
        @header = html.delete(:header)
        @html = html
      end

      def header_row?
        @header
      end
    end
  end
end
