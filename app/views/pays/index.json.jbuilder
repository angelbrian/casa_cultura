json.array!(@pays) do |pay|
  json.extract! pay, :id, :tipo_pago
  json.url pay_url(pay, format: :json)
end
