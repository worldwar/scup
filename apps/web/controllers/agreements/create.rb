module Web::Controllers::Agreements
  class Create
    include Web::Action

    expose :agreement

    def call(params)
      @agreement = AgreementRepository.create(Agreement.new(params[:agreement]))
      redirect_to '/agreements'
    end
  end
end
