class FleepHistory

  attr_reader :data, :contacts, :conversations, :topics

  def self.parse(filename)
    new JSON.parse(File.read(filename))
  end

  def silent?
    !Configuration.get(:progress)
  end

  def initialize(history)
    @topics = []
    @data = history
    @contacts      = {}.tap do |ctcs|
      history['contacts'].with_fortschritt(silent: silent?).map do |ct|
        contact = FleepContact.new(ct.fortschritt)
        ctcs[contact.id] = contact
      end
    end
    @conversations = history['conversations'].with_fortschritt(silent: silent?).map do |c|
      FleepConversation.new(c.fortschritt).tap { |cv| topics << cv.topic }
    end
  end

  def contact(id)
    contacts[id]
  end

  def filtered_conversations
    result = conversations
    result = result.reject { |c| c.topic.start_with?(Configuration.get(:ignore)) }
    result = result.reject { |c| c.topic == '' } if Configuration.get(:ignore_empty)
    result
  end

end
