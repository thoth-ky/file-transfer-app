# frozen_string_literal: true

class DocumentsController < ApplicationController
  def index
    @documents = Document.all
    render "index"
  end

  def show
    @document = Document.find(params[:id])
    render "show"
  end

  def create
    document = Document.new(document_params)
    document.user = current_user
    if document.valid?
      document.save!
      flash[:success] =["Document was uploaded successfully"]
      redirect_to documents_path
    else
      flash[:error] = document.errors.full_messages()
      redirect_to new_document_path
    end
  end

  def new
    @document = Document.new
    render "new"
  end

  private
  def document_params
    params.require(:document).permit(:file_name, :file)
  end
end
