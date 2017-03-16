class DebtsController < ApplicationController
  def index
    @debts = Debt.page(params[:page]).per(10)

    render("debts/index.html.erb")
  end

  def show
    @debt = Debt.find(params[:id])

    render("debts/show.html.erb")
  end

  def new
    @debt = Debt.new

    render("debts/new.html.erb")
  end

  def create
    @debt = Debt.new

    @debt.amount_debt = params[:amount_debt]
    @debt.user_id = params[:user_id]
    @debt.other_id = params[:other_id]

    save_status = @debt.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/debts/new", "/create_debt"
        redirect_to("/debts")
      else
        redirect_back(:fallback_location => "/", :notice => "Debt created successfully.")
      end
    else
      render("debts/new.html.erb")
    end
  end

  def edit
    @debt = Debt.find(params[:id])

    render("debts/edit.html.erb")
  end

  def update
    @debt = Debt.find(params[:id])

    @debt.amount_debt = params[:amount_debt]
    @debt.user_id = params[:user_id]
    @debt.other_id = params[:other_id]

    save_status = @debt.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/debts/#{@debt.id}/edit", "/update_debt"
        redirect_to("/debts/#{@debt.id}", :notice => "Debt updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Debt updated successfully.")
      end
    else
      render("debts/edit.html.erb")
    end
  end

  def destroy
    @debt = Debt.find(params[:id])

    @debt.destroy

    if URI(request.referer).path == "/debts/#{@debt.id}"
      redirect_to("/", :notice => "Debt deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Debt deleted.")
    end
  end
end
