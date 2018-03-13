 
module Response
    def json_response(object, staus = :ok)
        render json: object, status: status
    end
end