class ReleaseYearValidator < ActiveModel::Validator
    def validate(record)
        r_year=Time.new.year
        if record.release_year
            unless record.release_year <= r_year
                record.errors[:release_year] << "Must be less than or equal to the current year"
            end
            if record.released == true
                unless !record.release_year.nil?  
                    record.errors[:release_year] << "Must no be blank if released is true"
                end
            end
        elsif record.released == true && record.release_year.nil?
            unless !record.release_year.nil?  
                record.errors[:release_year] << "Must no be blank if released is true"
            end
        end
    end
end
