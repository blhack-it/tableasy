module Tableasy
  class Table
    class Cell
      attr_accessor :options, :value, :header, :html

      def initialize(value, options={}, html={})
        @value = value
        @options = options.reverse_merge(header: false)
        @header = options[:header]
        @html = html
      end

      def tag
        @header ? 'th' : 'td'
      end
    end
  end
end
