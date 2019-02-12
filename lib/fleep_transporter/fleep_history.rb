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

  def selected_conversations
    conf = Configuration.get(:conversations)
    conf ? conf.split(',').map(&:strip) : []
  end

  def filtered_conversations
    result = conversations
    if (sel_conv = selected_conversations).size > 0
      result = result.select { |c| sel_conv.include?(c.id) }
    else
      result = result.reject { |c| c.topic.start_with?(Configuration.get(:ignore)) }
      result = result.reject { |c| c.topic == '' } if Configuration.get(:ignore_empty)
    end
    result
  end

end
