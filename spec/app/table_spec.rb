require 'spec_helper'

RSpec.describe Table do
  it 'should set the correct table size' do
    @table = Table.new( [6, 8] )
    expect(@table.dimensions).to eq( [6, 8] )
  end

  it 'should default to size [5, 5]' do
    @table = Table.new
    expect(@table.dimensions).to eq( [5, 5] )
  end
end

