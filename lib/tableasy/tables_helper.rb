module Tableasy
  module TablesHelper

    def render_table(table, options={})
      content_tag('table', options[:html]) do
        table.rows[1..-1].each {|row| yield row } if block_given?
        table.rows.each {|row| concat content_row(row) }
      end
    end

    def table_cell(value, header=false, html = {})
      Tableasy::Table::Cell.new(value.to_s.html_safe, header, html = {})
    end

    def content_row(row)
      content_tag('tr', row.html) do
        row.cells.each {|cell| concat content_tag(cell.tag, cell.value, cell.html) }
      end
    end

    protected

    def header_cell(column, klass)
      column = default_header(column) if column.is_a?(Symbol)
      Table::Cell.new(klass, column, true)
    end

    def table_row(object, columns)
      columns.collect do |column|
        Table::Cell.new(object, column)
      end
    end
  end
end
