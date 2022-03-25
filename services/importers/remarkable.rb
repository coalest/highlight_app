class RemarkableImporter < Importer
  require 'json'

  def initialize(path)
    @path = path
  end

  def import
    file = File.read(@path)
    data = JSON.load(file)
    documents = data[:documents]
    highlights = data[:highlights]

    documents.each do |doc|
      source = Source.find_or_create_by(external_id: doc[:external_id])
    end
  end

  protected


end
