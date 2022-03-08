require 'spec_helper'

describe Tableasy::Table do
  describe 'with created table' do

    before :each do
      @table = Tableasy::Table.new
      @cell = Tableasy::Table::Cell.new('John')
    end

    it "should allow to add row" do
      @table.add_row([@cell, @cell])
      expect(@table.rows[0].cells).to eq([@cell, @cell])
    end

    it "should allow to add row with html" do
      @table.add_row([@cell], class: 'center')
      expect(@table.rows[0].html).to eq({ class: 'center' })
    end
  end
end
