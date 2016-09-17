require_relative 'fixed_array'

describe FixedArray do
  it 'instantiate a new array with given size' do 
    expect(FixedArray.new(3).array).to eq ([nil,nil,nil])
  end
    
end