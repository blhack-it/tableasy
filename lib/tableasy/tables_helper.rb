module Tableasy
  module TablesHelper

    def render_table(table, options={})
      content_tag('table', options[:html]) do
        table.rows[1..-1].each {|row| yield row } if block_given?
        table.rows.each {|row| concat content_row(row) }
      end
    end

    def table_cell(value, header=false, html = {})
      Tableasy::Table::Cell.new(value.to_s.html_safe, header, html)
    end

    def header_cell(value, html = {})
      Tableasy::Table::Cell.new(value.to_s.html_safe, true, html)
    end

    private

    def content_row(row)
      content_tag('tr', row.html) do
        row.cells.each {|cell| concat content_tag(cell.tag, cell.value, cell.html) }
      end
    end

  end
end
