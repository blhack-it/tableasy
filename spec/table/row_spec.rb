require 'spec_helper'

describe Tableasy::Table::Row do

  it "should allow marking row as header row" do
    row = Tableasy::Table::Row.new([], header: true)
    expect(row.header_row?).to eq(true)
  end

  it "should allow passing html attributes" do
    row = Tableasy::Table::Row.new([], title: 'Data')
    expect(row.html[:title]).to eq('Data')
  end
end
