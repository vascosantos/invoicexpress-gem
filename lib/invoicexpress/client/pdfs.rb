require 'invoicexpress/models'

module Invoicexpress
  class Client
    module PDFs

      # retrieve PDF url for given Invoice id
      # NOTE: this function does not retry when the PDF is still being generated
      def generate_pdf(invoice_id, options={})
        params = { :klass => Invoicexpress::Models::PDF }
        get("api/pdf/#{invoice_id}.xml", params.merge(options))
      end
    end
  end
end