require_relative 'fixed_array'

describe FixedArray do
  let(:fa) {FixedArray.new(3)}

  it 'instantiate a new array with given size' do 
    expect(FixedArray.new(3).array).to eq ([nil,nil,nil])
  end

  it 'gets the value at an index' do 
    fa.array = [1,2,3]
    expect(fa.get(1)).to eq(2)
  end

  it 'returns an error when an invalid index is given' do 
    
  end
    
end