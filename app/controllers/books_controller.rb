class BooksController < ApplicationController
  before_action :authenticate!

  def create
    book = Book.new(create_params)

    if book.save
      render json: {data: book.representation(:basic)}, status: 201
    else
      render json: {errors: book.errors.details}, status: 422
    end
  end

  def create_params
    params.require(:data).permit(:name, :year, :editorial_id, editorial_attributes: [:name])
  end
end
