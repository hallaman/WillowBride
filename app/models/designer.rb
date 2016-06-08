class Designer < ActiveRecord::Base
  has_many :dresses, autosave: true, dependent: :destroy
  accepts_nested_attributes_for :dresses,
  :reject_if => :reject_dresses,
  allow_destroy: true
  validates_associated :dresses

  validates :name,
            :presence => true

end
