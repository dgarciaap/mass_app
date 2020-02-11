class CalculatorsController < ApplicationController
  def index
  end

  def measure
	  @weight = calculation_params[:weight].to_f
	  @height = calculation_params[:height].to_f

    @result = (@weight / (@height ** 2)).round(1)
    @category = 'Your category is: '
    
    case @result
    when 15.0..18.4
	   @category += ' Underweight'
    when 15.5..24
	   @category += ' Normal'
    when 25.0..60.0
	   @category += ' Overweight'
    else
	   raise ' Error: result has and invalid value'
    end
  end

  private
    def calculation_params
	    params.require(:measure).permit(:height, :weight)
    end
end
