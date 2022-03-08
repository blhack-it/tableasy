require 'spec_helper'

describe Tableasy::Table::Cell do

  let(:subject) { build(:user) }

  it "show the value passed to cell" do
    cell = Tableasy::Table::Cell.new('John')
    expect(cell.value).to eq('John')
    expect(cell.tag).to eq('td')
  end

  it "show the value passed to cell" do
    cell = Tableasy::Table::Cell.new('John', { header: true })
    expect(cell.header).to eq(true)
    expect(cell.tag).to eq('th')
  end

end
