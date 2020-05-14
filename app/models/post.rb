class Post < ActiveRecord::Base 
    validates :title, presence: true
    validates :content, length:{minimum: 250}
    validates :summary, length:{maximum: 250}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }

    include ActiveModel::Validations
    validates_with ClickbaitValidator
   # Finally, add a custom validator to Post that ensures the title is sufficiently clickbait-y. If the title does not contain "Won't Believe", "Secret", "Top [number]", or "Guess", the validator should add a validation.

end
