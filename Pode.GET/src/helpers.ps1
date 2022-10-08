function Write-Request {
    param (
        $WEvent
    )

    begin{
        $response = [pscustomobject]@{
            time = $WEvent.Timestamp
            host = $WEvent.endpoint.address
            protocol = $WEvent.endpoint.protocol 
            method = $WEvent.method
            uri = $WEvent.path
            status = $WEvent.response.statuscode
            error = $WEvent.ErrorType
            bytes_in = $WEvent.response.ContentLength64
            bytes_out = $WEvent.response.OutputStream.capacity
        }

        return $response

    }

}