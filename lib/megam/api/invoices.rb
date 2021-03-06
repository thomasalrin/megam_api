module Megam
  class API
    def get_invoices
      @options = {:path => '/invoices',:body => ""}.merge(@options)

      request(
        :expects  => 200,
        :method   => :get,
        :body     => @options[:body]
      )
    end

    def get_invoice(id)
      @options = {:path => "/invoices/#{id}",:body => ""}.merge(@options)

      request(
        :expects  => 200,
        :method   => :get,
        :body     => @options[:body]
      )
    end

    def post_invoices(new_invoices)
      @options = {:path => '/invoices/content',
        :body => Megam::JSONCompat.to_json(new_invoices)}.merge(@options)

      request(
        :expects  => 201,
        :method   => :post,
        :body     => @options[:body]
      )
    end

  end
end
