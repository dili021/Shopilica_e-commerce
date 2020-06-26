class Product < ApplicationRecord
  before_destroy :not_referenced_by_line_item
  has_many_attached :images
  has_many :line_items

  belongs_to :user, optional: true

  validates :name, :description, :price, presence: true

  validates :description, length: { maximum: 1000,
                                    too_long: "Keep description bellow
                                              %<count> characters." }
  validates :name, length: { maximum: 150 }
  validates :price, numericality: { only_integer: true,
                                    greater_than: 0,
                                    less_than: 50_001 }

  CATEGORY = %w[Garderoba Kozmetika Nakit Elektronika].freeze

  default_scope -> { order(created_at: :desc) }

  private

  def not_referenced_by_line_item
    return if line_items.empty?

    errors.add(:base, 'Line items present')
    throw :abort
  end
end
