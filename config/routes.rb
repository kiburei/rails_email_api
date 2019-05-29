Rails.application.routes.draw do
  post 'send_email/send_ncg_bill'
  post 'send_email/send_ncg_receipt'
end
