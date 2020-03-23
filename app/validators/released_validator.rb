class ReleasedValidator < ActiveModel::Validator
    def validate(record)
        unless record.released != true || record.released != false
            record.error[:released] << "Released must be true or false" 
        end
    end

end
