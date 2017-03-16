class PaymentInformationsController < ApplicationController
  def index
    @payment_informations = PaymentInformation.all

    render("payment_informations/index.html.erb")
  end

  def show
    @payment_information = PaymentInformation.find(params[:id])

    render("payment_informations/show.html.erb")
  end

  def new
    @payment_information = PaymentInformation.new

    render("payment_informations/new.html.erb")
  end

  def create
    @payment_information = PaymentInformation.new

    @payment_information.user_id = params[:user_id]
    @payment_information.name_on_card = params[:name_on_card]
    @payment_information.issuing_bank = params[:issuing_bank]
    @payment_information.creditdebit_card_number = params[:creditdebit_card_number]
    @payment_information.type_of_card = params[:type_of_card]

    save_status = @payment_information.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/payment_informations/new", "/create_payment_information"
        redirect_to("/payment_informations")
      else
        redirect_back(:fallback_location => "/", :notice => "Payment information created successfully.")
      end
    else
      render("payment_informations/new.html.erb")
    end
  end

  def edit
    @payment_information = PaymentInformation.find(params[:id])

    render("payment_informations/edit.html.erb")
  end

  def update
    @payment_information = PaymentInformation.find(params[:id])

    @payment_information.user_id = params[:user_id]
    @payment_information.name_on_card = params[:name_on_card]
    @payment_information.issuing_bank = params[:issuing_bank]
    @payment_information.creditdebit_card_number = params[:creditdebit_card_number]
    @payment_information.type_of_card = params[:type_of_card]

    save_status = @payment_information.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/payment_informations/#{@payment_information.id}/edit", "/update_payment_information"
        redirect_to("/payment_informations/#{@payment_information.id}", :notice => "Payment information updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Payment information updated successfully.")
      end
    else
      render("payment_informations/edit.html.erb")
    end
  end

  def destroy
    @payment_information = PaymentInformation.find(params[:id])

    @payment_information.destroy

    if URI(request.referer).path == "/payment_informations/#{@payment_information.id}"
      redirect_to("/", :notice => "Payment information deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Payment information deleted.")
    end
  end
end
