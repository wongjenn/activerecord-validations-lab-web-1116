class MyValidator < ActiveModel::Validator
  def validate(record)

    clickbaits = ["Won't Believe", "Guess", "Secret", "Top[number]"]
    if record.title.nil?
      return record.errors[:base] << "invalid"
    end

      clickbaits.each do |clickbait|
        if record.title.include?(clickbait)
          return
        end
      end
      record.errors[:base] << "invalid"
  end
end
