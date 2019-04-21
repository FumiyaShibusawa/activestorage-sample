# frozen_string_literal: true

class Diary < ApplicationRecord
  belongs_to :user, inverse_of: :diaries
  has_many_attached :images
end
