class ClickbaitValidator < ActiveModel::Validator
  def validate(record)
    words = [/Won't Believe/i, /Secret/i, /Guess/i, /Top [1-9]/]
      if  words.none? {|word| word.match(record.title)}
        record.errors[:title].push("title needs to be clickbait")
      end
  end
end