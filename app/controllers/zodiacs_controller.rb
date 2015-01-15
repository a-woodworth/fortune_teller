class ZodiacsController < ApplicationController
  def index
    @list_of_zodiacs = Zodiac.all
    render 'index'
  end

  def new_form
  end

  def create
    @submitted_sign = params[:sign]
    @submitted_creature = params[:creature]
    @submitted_fortune = params[:fortune]

    z = Zodiac.new
    z.sign = @submitted_sign
    z.creature = @submitted_creature
    z.fortune = @submitted_fortune
    z.save

    redirect_to '/all_zodiacs'
  end

  def sign
    @zodiac_sign = Zodiac.find_by({ :sign => params[:the_sign] })
    render 'sign'
  end

  def creature
    @zodiac_creature = Zodiac.find_by({ :creature => params[:the_creature] })
  end

  def show
    @zodiac = Zodiac.find(params[:id])
  end

  def edit
  end

end
