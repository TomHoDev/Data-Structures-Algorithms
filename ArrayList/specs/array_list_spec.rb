require_relative '../array_list'

describe ArrayList do
  let(:al) { ArrayList.new(3) }

  describe 'ArrayList#new' do 
    it 'instantiates a new array with a given size' do 
      expect(ArrayList.new(3).array.array).to eq ([nil,nil,nil])
    end
  end

  describe 'ArrayList#add' do 
    it 'returns the newly added element' do 
      expect(al.add(4)).to eq(4)
    end

    it 'adds the new element to the array' do 
      expect{ al.add(4) }.to change{al.array.array}.from([nil,nil,nil]).to([nil,nil,nil,4])
    end
  end

  describe 'ArrayList#get' do 
    it 'retrieves the element at an index' do 
      al.array.array = [1,2,3]
      expect(al.get(1)).to eq(2)
    end

    it 'raises an error when the index does not exist' do 
      expect { al.get(4) }.to raise_error(IndexOutOfBoundsError)
    end    
  end

  describe 'ArrayList#set' do 
    it 'sets the an element in the list to a new specified element' do 
      expect { al.set(0,1) }.to change{ al.get(0) }.from(nil).to(1)
    end

    it 'raise out of bounds error when index does not exist' do 
      expect { al.get(4) }.to raise_error(IndexOutOfBoundsError)
      expect { al.get(-1) }.to raise_error(IndexOutOfBoundsError)
    end
  end

end