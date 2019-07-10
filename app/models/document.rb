# frozen_string_literal: true

class Document < ApplicationRecord
  belongs_to :user
  has_one_attached :file
end
