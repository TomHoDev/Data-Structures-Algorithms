require_relative '../node'

describe Node do
  let(:node0) {Node.new(0)}
  let(:node1) {Node.new(1)}

  describe 'Node#new' do 
    it 'instantiates a new node with a give element' do 
      expect(node0).to be_instance_of(Node)
      expect(node0.element).to eq(0)
    end
  end

  describe 'Node#insert_after' do 
    it 'links current node to new node' do 
      expect{ node0.insert_after(node1) }.to change{ node0.next }.from(nil).to(node1)
    end
  end

  describe 'Node'

end