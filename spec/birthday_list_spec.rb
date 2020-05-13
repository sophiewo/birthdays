require 'birthday_list'

describe BirthdayList do
  subject(:birthday) { described_class.new }

  it 'checks instance of class exists' do
    expect(BirthdayList).to respond_to(:new)
  end

  describe '#add_name' do
    it "should add a friend's name and birthday to list" do  
      expect(subject.add_name("Sophie", "07.08.1991")).to eq [{name: 'Sophie', birthday: "07.08.1991"} ]
    end
  end

  describe '#print_names' do
    it "should print name of everyone in my birthday list" do 
      subject.add_name('Sophie', "07.08.1991")
    
      expect(subject.print_names).to include "The birthday of my friend Sophie is 07.08.1991"
    end
  end
end

