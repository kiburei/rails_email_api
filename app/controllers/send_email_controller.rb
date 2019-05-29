class SendEmailController < ApplicationController

  def send_ncg_bill
    bill_data = {
      to_email: params[:to_email],
      customer_name: params[:customer_name],
      customer_id: params[:customer_id],
      customer_phone: params[:customer_phone],
      subject: params[:subject],
      bill_number: params[:bill_number],
      bill_account: params[:bill_account],
      bill_description: params[:bill_description],
      bill_amount: params[:bill_amount]
    }

    BillingCashOfficeMailer.ncg_bill(bill_data).deliver_now
  end

  def send_ncg_receipt
    receipt_data = {
      to_email: params[:to_email],
      customer_name: params[:customer_name],
      customer_id: params[:customer_id],
      customer_phone: params[:customer_phone],
      subject: params[:subject],
      receipt_number: params[:receipt_number],
      receipt_bill: params[:receipt_bill],
      receipt_for: params[:receipt_for],
      receipt_amount: params[:receipt_amount]
    }

    BillingCashOfficeMailer.ncg_receipt(receipt_data).deliver_now
  end

  private
# Define strong params
  def bill_params

  end

  def receipt_params

  end


end
