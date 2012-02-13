module Tableasy
  class Table
    class Cell
      include HtmlAttributes
      attr_accessor :value, :header
      attr_reader :subject

      def initialize(value, header, html = {})
        @header  = header
        @value   = value
        @html    = html
      end

      def tag
        @header ? 'th' : 'td'
      end
    end
  end
end
