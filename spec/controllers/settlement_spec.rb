require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :request do
  before(:each) do
    @user = User.create(name: 'Brenda', email: 'Brenda@23.com', password: '123456')
    @group = Group.create(name: 'Brenda', icon: 'https://cdn-icons-png.flaticon.com/512/602/602320.png', user: @user)
    @settlement = Settlement.create(name: 'tina', amount: 2, group: @group, user: @user)
  end

  describe 'GET /settlements' do
    before { get group_path(@group) }
  end
end
