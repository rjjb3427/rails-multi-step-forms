class FormsController < ApplicationController
  def new
    @form = Form.new
  end

  def create
    form = Form.new form_params

    if form.save
      # se rappeller de l'ID de l'objet crée par l'utilisateur courant
      redirect_to :root, notice: "Thanks!"
    else
      render 'new'
    end
  end

  def keep_in_touch
    # récupérer l'ID de l'objet depuis la session
    # modifier l'objet
    # rediriger vers et dire merci
  end

  private

  def form_params
    params.require(:form).permit(:body)
  end
end
