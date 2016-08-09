module Web::Controllers::Site
  class Handle
    include Web::Action

    def call(params)
    	agreements = AgreementRepository.agreements_by_url(params[:url]).all()

    	agreement = agreements.detect do |agreement|
    	  agreement.http_method.nil? || agreement.http_method.eql?(request.request_method)
    	end

    	self.format = :json
    	self.body = agreement.response
    end
  end
end
