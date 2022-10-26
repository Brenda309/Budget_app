require 'rails_helper'

RSpec.describe Traffic, type: :model do
    subject {Traffic.new(name: 'rent',amount: 250)}
    before {subject.save}

    it 'the name should be present' do 
        subject.name = nil
        expect(subject).to_not be_valid
    end

   it "the amount should be greater than zero" do
    expect(subject.amount).to be_an(Numeric)
    expect(subject.amount).to be >= 0
      
    end
end