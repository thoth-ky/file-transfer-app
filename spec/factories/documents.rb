# frozen_string_literal: true

FactoryBot.define do
  factory :document do
    file_name { "MyString" }
    file { File.open("fixtures/example.jpg") }
    user { nil }
  end
end
