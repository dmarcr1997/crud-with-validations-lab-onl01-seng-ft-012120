class TitleValidator < ActiveModel::Validator
    def validate(record)
        Song.all.each do |song| 
            if song.release_year == record.release_year
                unless song.title != record.title
                    record.errors[:title] << "Cannot create a duplicate song" 
                end
            end
        end
    end
end
