class FleepHistory

  attr_reader :data, :contacts, :conversations, :topics

  def self.parse(filename)
    new JSON.parse(File.read(filename))
  end

  def initialize(history)
    @topics = []
    @data = history
    @contacts      = {}.tap do |ctcs|
      history['contacts'].map do |ct|
        contact = FleepContact.new(ct)
        ctcs[contact.id] = contact
      end
    end
    @conversations = history['conversations'].map do |c|
      FleepConversation.new(c).tap { |cv| topics << cv.topic }
    end
  end

  def contact(id)
    contacts[id]
  end

end
