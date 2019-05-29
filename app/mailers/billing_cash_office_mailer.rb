class BillingCashOfficeMailer < ApplicationMailer
  default from: "akiburei@gmail.com"

  def ncg_bill(bill_data)
    @bill = bill_data
    mail(to: bill_data[:to_email], subject: bill_data[:subject])
  end

end
