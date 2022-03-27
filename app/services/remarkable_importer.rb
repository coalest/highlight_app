class RemarkableImporter < Importer
  def initialize(path)
    @path = path
  end

  def import
    file = File.read(@path)
    data = JSON.load(file)
    documents, highlights = data['documents'], data['highlights']

    import_documents(documents)
    import_highlights(highlights)
  end

  private

  def import_documents(documents)
    documents.each do |doc|
      next if Source.exists?(external_id: doc['id'])
      Source.create(title: doc['name'],
                    origin: "Remarkable",
                    category: "Book",
                    external_id: doc['id'])
    end
  end

  def import_highlights(highlights)
    highlights.each do |highlight|
      next if Highlight.exists?(external_id: highlight['hash'])
      source_id = Source.find_by(external_id: highlight['document_id']).id
      Highlight.create!(text: highlight['text'],
                       location: highlight['page_number'],
                       external_id: highlight['hash'],
                       source_id: source_id,
                       user_id: @user)
    end
  end
end
