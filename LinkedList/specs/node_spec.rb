require_relative '../node.rb'

describe 'Node#new' do 
  it 'instantiates a new node with a give element' do 
    expect(Node.new(8)).to be_instance_of(Node)
  end
end