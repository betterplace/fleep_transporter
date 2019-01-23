class FleepAttachment

  attr_reader :data

  def initialize(attachment)
    @data = attachment
  end

  def to_s
    if !data['title'] || data['title'] == ''
      return "> *Fleep attachment could not be copied over: #{data['file_url']}*"
    end
    result = ''
    result += "> *#{data['title']}*\n>\n"
    result += "> #{data['description']}\n" if data['description'] && data['description'] != ''
    result += "> #{data['attached_url']}" if data['attached_url'] && data['attached_url'] != ''
    result
  end

  # Example:
  #     {
  #    "attachment_id": "I4dpFlmQSXq1stnB1kvi3w",
  #    "orientation": null,
  #    "file_type": "image/png",
  #    "file_name": "preview575.png",
  #    "height": 315,
  #    "thumb_url_50": "/thumb/2U9u4wIRSpSx0ulbP0vi3w/75/I4dpFlmQSXq1stnB1kvi3w/thumb50",
  #    "file_size": 47421,
  #    "description": "The current datafication of society not only brings about another iteration of capitalism, but also a new form of colonialism. We are witnessing the start of a new phase in human history that rivals in importance the emergence of historic colonialism: in short, the emergence of a new data colonialism, based on the appropriation of…",
  #    "title": "Nick Couldry: Colonised by data – the hollowing out of digital society | HIIG",
  #    "sender_name": null,
  #    "orig_file_size": 65032,
  #    "thumb_url_100": "/thumb/2U9u4wIRSpSx0ulbP0vi3w/75/I4dpFlmQSXq1stnB1kvi3w/thumb100",
  #    "message_id": "7ad44b37-2ca4-4440-95d8-f4e5134be2df",
  #    "file_sha256": "6144a6074728987b35af32b1bd37184e052e003016b9c5a4498f7b957d9a68c4",
  #    "mk_rec_type": "preview",
  #    "attached_url": "https://www.hiig.de/en/events/nick-couldry-colonised-by-data-the-hollowing-out-of-digital-society/",
  #    "account_id": "15651ff6-4ca6-4c0c-8e13-bec3be287be0",
  #    "deleter_id": "",
  #    "posted_time": 1540891516,
  #    "conversation_id": "d94f6ee3-0211-4a94-b1d2-e95b3f4be2df",
  #    "message_nr": 75,
  #    "is_deleted": false,
  #    "orig_file_name": "Couldry_Header-38-38.png",
  #    "file_url": "/file/2U9u4wIRSpSx0ulbP0vi3w/75/I4dpFlmQSXq1stnB1kvi3w/preview575.png",
  #    "width": 575,
  #    "is_animated": false
  #  }
end
