require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:user) { create :user }

  describe '#GET index' do
    context 'when user is not logged' do
      before do
        get :index
      end

      it 'return 401 http status' do
        expect(response).to have_http_status 401
      end
    end
  end
end
