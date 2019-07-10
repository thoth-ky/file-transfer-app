# frozen_string_literal: true

require "rails_helper"

RSpec.describe Document, type: :model do
  it "can create and attach file" do
    document = Document.new(
      file_name: "Test",
      user: create(:user)
    )
    document.file.attach(
      io: File.open("spec/fixtures/example.jpg"),
      filename: "example.jpg"
    )
    document.save!
    expect(document.file.attached?).to be(true)
  end
end
