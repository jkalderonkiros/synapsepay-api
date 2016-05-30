module Synapsepay

  class Client
    API_BASE = "https://sandbox.synapsepay.com/api/3"

    def initialize
      @sconfig = {
        'client_id' => 'id-e72770b9-e044-45bc-a1a1-46ffb111f604',
        'secret' => 'secret-7c685eb4-3e6f-46ee-9be2-db5512c94e50'
      }

      @headers = {
        'Content-Type' => 'application/json',
        'X-SP-GATEWAY' => "#{@sconfig['client_id']}|#{@sconfig['secret']}"
      }
    end

    def create(email, phone_number, legal_name)

      payload = {
        :logins => [{ email: email }],
        :phone_numbers => [phone_number],
        :legal_names => [legal_name]
      }

      RestClient::Request.execute(method: :post, url: "#{API_BASE}/users", payload: payload.to_json, headers: @headers.to_hash)
    end

    def list
      res = []
      json = JSON.parse(RestClient::Request.execute(method: :get, url: "#{API_BASE}/users", headers: @headers.to_hash))
      if json 
        res = json['users']
      end
      return res
    end

  end

end
