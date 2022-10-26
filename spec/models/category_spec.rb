require 'rails_helper'

RSpec.describe Category, type: :model do
    subject {Category.new(name: 'Rent',icon: 'https://cdn-icons-png.flaticon.com/512/1769/1769483.png')}
    before {subject.save}

    it 'the name should be present' do 
        subject.name = nil
        expect(subject).to_not be_valid
    end

      it 'the name should be present' do 
        subject.icon = nil
        expect(subject).to_not be_valid
      end
      
    end
