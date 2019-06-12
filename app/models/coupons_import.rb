class CouponsImport
  include ActiveModel::Model

  attr_accessor :companies, :user

  validates :companies, :user, presence: true

  def save
    if valid?
      # CouponsImportService.new(self).import
      true
    else
      false
    end
  end
end
