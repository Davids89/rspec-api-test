class BooksController < ApplicationController
  before_action :authenticate!
  before_action :find_book, only: %i[update]

  def create
    book = Book.new(create_params)

    if book.save
      render json: {data: book.representation(:basic)}, status: 201
    else
      render json: {errors: book.errors.details}, status: 422
    end
  end

  def update
    if @book.update(update_params)
      render json: {}, status: 204
    else
      render json: {errors: book.errors.details}, status: 422
    end
  end

  private

  def find_book
    @book = Book.find(params[:id])

    authorize @book
  end

  def create_params
    params.require(:data).permit(:name, :year, :editorial_id, editorial_attributes: [:name])
  end

  def update_params
    create_params
  end
end
