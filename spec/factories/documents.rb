# frozen_string_literal: true

FactoryBot.define do
  factory :document do
    file_name { "MyString" }
    files { { io: File.open("spec/fixtures/example.jpg"), filename: "example.jpg" } }
    user { create(:user) }
  end
end
