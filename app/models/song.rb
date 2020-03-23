class Song < ApplicationRecord
    include ActiveModel::Validations
    validates_with ReleaseYearValidator
    validates_with TitleValidator
    validates_with ReleasedValidator
    
    validates :title, presence: true
    validates :artist_name, presence: true
    validates :genre, presence: true
end
