require 'rails_helper'

RSpec.describe BooksController, type: :controller do
  let(:user) { create :user }

  before do
    sign_in user
  end

  describe '#POST create' do
    let(:params) {}

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

  describe '#PUT update' do
    let(:params) {}
    let(:book) { create :book }

    context 'when the user has no permission' do
      let(:user_withou_permission) { create :user }

      before do
        params = {
          name: 'new name'
        }

        put :update, params: {id: book.id, data: params}
        # put :update, params: {id: id, data: params}
      end

      it 'is not updated' do
        expect(response).to have_http_status 403
      end
    end
  end
end