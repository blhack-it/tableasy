require 'spec_helper'

describe Tableasy::TablesHelper do

  it "should render the correct table" do

    table = Tableasy::Table.new

    table.add_row [helper.header_cell('Name', class: "hc")], { class: "rc" }
    table.add_row [helper.table_cell('John')]

    output = "<table><tr class=\"rc\"><th class=\"hc\">Name</th></tr><tr><td>John</td></tr></table>"

    expect(helper.render_table(table)).to eq(output)

  end

end
