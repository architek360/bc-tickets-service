
class Order < OpenStruct

  def self.find(id)
    new(FIXTURE).tap { |o| o.id = id }
  end

  def products
    Product.find_by_order_id(id)
  end

  FIXTURE = {
    :id => 100,
    :customer_id => 1,
    :date_created => "Fri, 02 Mar 2012 21:36:24 +0000",
    :date_modified => "Mon, 12 Mar 2012 21:40:16 +0000",
    :date_shipped => "Fri, 02 Mar 2012 21:36:56 +0000",
    :status_id => 11,
    :status => "Awaiting Fulfillment",
    :subtotal_ex_tax => "0.0100",
    :subtotal_inc_tax => "0.0100",
    :subtotal_tax => "0.0000",
    :base_shipping_cost => "0.0000",
    :shipping_cost_ex_tax => "0.0000",
    :shipping_cost_inc_tax => "0.0000",
    :shipping_cost_tax => "0.0000",
    :shipping_cost_tax_class_id => 2,
    :base_handling_cost => "0.0000",
    :handling_cost_ex_tax => "0.0000",
    :handling_cost_inc_tax => "0.0000",
    :handling_cost_tax => "0.0000",
    :handling_cost_tax_class_id => 2,
    :base_wrapping_cost => "0.0000",
    :wrapping_cost_ex_tax => "0.0000",
    :wrapping_cost_inc_tax => "0.0000",
    :wrapping_cost_tax => "0.0000",
    :wrapping_cost_tax_class_id => 3,
    :total_ex_tax => "0.0100",
    :total_inc_tax => "58.0000",
    :total_tax => "5.2727",
    :items_total => 1,
    :items_shipped => 0,
    :payment_method => "Pay in Store",
    :payment_provider_id => nil,
    :payment_status => "",
    :refunded_amount => "0.0000",
    :order_is_digital => true,
    :store_credit_amount => "0.0000",
    :gift_certificate_amount => "0.0000",
    :ip_address => "127.0.0.1",
    :geoip_country => "United States",
    :geoip_country_iso2 => "US",
    :currency_id => 1,
    :currency_code => "USD",
    :currency_exchange_rate => "1.0000000000",
    :default_currency_id => 1,
    :default_currency_code => "USD",
    :staff_notes => "",
    :customer_message => "",
    :discount_amount => "0.0000",
    :coupon_discount => "0.0000",
    :shipping_address_count => 0,
    :is_deleted => false,
    :billing_address =>  {
      :first_name => "Johann",
      :last_name => "Strauss",
      :company => "",
      :street_1 => "1 Main Street",
      :street_2 => "",
      :city => "Walla Walla",
      :state => "WA",
      :zip => "99362",
      :country => "United States",
      :country_iso2 => "US",
      :phone => "5555556789",
      :email => "bug@bunny.com"
    },
    :shipping_addresses => {
      :url => "https:\/\/store-12345.mybigcommerce.com\/api\/v2\/orders\/100\/shippingaddresses.json",
      :resource => "\/orders\/100\/shippingaddresses"
    },
    :coupons => {
      :url => "https:\/\/store-12345.mybigcommerce.com\/api\/v2\/orders\/100\/coupons.json",
      :resource => "\/orders\/100\/coupons"
    }
  }

end
