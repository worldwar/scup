module Web::Controllers::Agreements
  class Index
    include Web::Action

    expose :agreements

    def call(params)
      @agreements = AgreementRepository.all
    end
  end
end
