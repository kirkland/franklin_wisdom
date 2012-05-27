class Virtue < Struct.new(:name, :content)

  has_many :sent_emails

  def self.all
    [Virtue.new('Temperance', 'Eat not to dullness; drink not to elevation.'),
     Virtue.new('Silence', 'Speak not but what may benefit others or yourself; Avoid trifling Conversation.'),
     Virtue.new('Order', 'Let all your things have their places; let each part of your business have its time.'),
     Virtue.new('Resolution', 'Resolve to perform what you ought; perform without fail what you resolve.'),
     Virtue.new('Fragality', 'Make no expense but to do good to others or yourself; i.e., waste nothing.'),
     Virtue.new('Industry', 'Lose no time. Be always employed in something useful. Cut off all unnecessary actions.'),
     Virtue.new('Sincerity', 'Use no hurtful deceit; think innocently and justly, and, if you speak, speak accordingly.'),
     Virtue.new('Justice', 'Wrong none by doing injuries, or omitting the benefits that are your duty.'),
     Virtue.new('Moderation', 'Avoid extreams; forbear resenting injuries so much as you think they deserve.'),
     Virtue.new('Cleanliness', 'Tolerate no uncleanliness in body, cloaths, or habitation.'),
     Virtue.new('Tranquility', 'Be not disturbed at trifles, or at accidents common or unavoidable.'),
     Virtue.new('Chastity', 'Rarely use venery but for health or offspring, never to dulness, weakness, or the injury of your own or another\'s peace or reputation.'),
     Virtue.new('Humility', 'Imitate Jesus and Socrates'),
    ]
  end

  def self.find(id)
    index = id - 1

    if id > all.length
      raise "Unknown Virtue."
    end

    all[index]
  end
end
