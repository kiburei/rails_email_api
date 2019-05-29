class BillingCashOfficeMailer < ApplicationMailer
  default from: "akiburei@gmail.com"

  def ncg_bill
    @customer = "Andrew Mwangi Wachira"
    mail(to: "mwangi@nouveta.tech", subject: "Nairobi County Government Bill")
  end

end
