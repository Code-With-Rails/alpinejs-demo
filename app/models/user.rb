# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
