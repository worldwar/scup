module Web::Controllers::Agreements
  class Create
    include Web::Action

    expose :agreement

    def call(params)
      @agreement = AgreementRepository.create(Agreement.new(params[:agreement]))
      # puts "agreement:", @agreement

      redirect_to "/agreements/greeting/#{@agreement.id}"
    end
  end
end
