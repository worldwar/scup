class AgreementRepository
  include Hanami::Repository
  def self.agreements_by_url(url)
    query do
      where(url: url)
    end
  end
end
