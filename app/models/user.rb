# frozen_string_literal: true

class User < ApplicationRecord
  has_many :diaries, dependent: :destroy, inverse_of: :user
  has_one_attached :avatar
end
