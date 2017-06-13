class Article < ApplicationRecord
  require 'sanitize'
  before_save :sanitize_body

  def sanitize_body
    Sanitize.fragment(body, Sanitize::Config::RELAXED)
  end
end
