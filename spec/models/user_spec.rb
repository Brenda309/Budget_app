require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'Brenda', email: 'brenda@gmail.com', password: '123456') }
  before { subject.save }

  it 'the name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it 'it should be  valid' do
    expect(subject).to be_valid
  end
end
