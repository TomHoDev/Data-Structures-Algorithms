require_relative '../fixed_array'

describe FixedArray do
  let(:fa) { FixedArray.new(3) }

  describe 'FixedArray#new' do
    it 'instantiates a new array with given size' do 
      expect(FixedArray.new(3).array).to eq ([nil,nil,nil])
    end
  end

  describe 'FixedArray#get' do
    it 'gets the value at an index' do 
      fa.array = [1,2,3]
      expect(fa.get(1)).to eq(2)
    end

    it 'returns an error when an invalid index is given' do 
      expect { fa.get(4) }.to raise_error(IndexOutOfBoundsError)
      expect { fa.get(-1) }.to raise_error(IndexOutOfBoundsError)
    end
  end

  describe 'FixedArray#get' do
    it 'changes the fixed array' do 
      expect { fa.set(0,2)}.to change{ fa.get(0) }.from(nil).to(2)
    end

    it 'returns the new element' do 
      expect(fa.set(0,2)).to eq(2)
    end

    it 'returns an error when an invalid index is given' do 
      expect { fa.set(4,0) }.to raise_error(IndexOutOfBoundsError)
      expect { fa.set(-1,0) }.to raise_error(IndexOutOfBoundsError)
    end

  end  
end

