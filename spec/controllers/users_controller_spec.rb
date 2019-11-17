require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:user) { create :user }

  # - TODO: Representation tests
  # - TODO: Data tests

  describe '#GET index' do
    context 'when user is not logged' do
      before do
        get :index
      end

      it 'return 401 http status' do
        expect(response).to have_http_status 401
      end
    end

    context 'when the user is logged' do
      before do
        sign_in user

        get :index
      end

      it 'returns 200 http status code' do
        expect(response).to have_http_status 200
      end
    end
  end
end
