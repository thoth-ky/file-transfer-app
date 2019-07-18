# frozen_string_literal: true

class Document < ApplicationRecord
  belongs_to :user
  has_many_attached :files
  validates :files, presence: true
  validates :file_name, uniqueness: true
end
