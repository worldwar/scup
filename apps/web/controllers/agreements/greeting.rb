module Web::Controllers::Agreements
  class Greeting
    include Web::Action

    expose :agreement
    expose :domain

    def call(params)
      @agreement = AgreementRepository.find(params[:id])
      @domain = "localhost:2300/site/"
    end
  end
end
