require 'rails_helper'

RSpec.describe BooksController, type: :controller do
  let(:user) { create :user}

  before do
    sign_in user
  end

  describe '#POST create' do
    let(:params) { }

    context 'when we send the data of an editorial' do
      before do
        params = {
          name: 'new book',
          year: Time.zone.now.year,
          editorial_attributes: {name: 'new editorial'}
        }

        post :create, params: {data: params}
      end

      it 'creates the book and the editorial' do
        expect(response).to have_http_status 201
      end
    end
  end
end