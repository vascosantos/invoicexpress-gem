module Invoicexpress
  module Models
    class PDF < BaseModel
      include HappyMapper

      tag 'output'
      element :pdfUrl, String
    end
  end
end