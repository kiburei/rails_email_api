class BillingCashOfficeMailer < ApplicationMailer
  default from: "akiburei@gmail.com"

  def ncg_bill(bill_data)
    @bill = bill_data
    mail(to: bill_data[:to_email], subject: bill_data[:subject])
  end

  def ncg_receipt(receipt_data)
    @receipt = receipt_data
    mail(to: receipt_data[:to_email], subject: receipt_data[:subject])
  end

end
