class CalculationsController < ApplicationController

  ## Part I. FLEX
  
  def flex_square
    # The incoming parameters for this action look like {"a_number"=>"5"}
    # Rails stores that hash in a variable called params
    # The params function reads a string. We need to convert to number
    
    @user_number = params[:number].to_i
    @squared_number = @user_number**2
    
    render("calculations/flex_square_template.html.erb")
  end
  
  
  def flex_square_root

    @user_number = params[:number].to_f
    @squared_rootnumber = Math.sqrt(@user_number)

    render("calculations/flex_square_root_template.html.erb")
    
  end
  
  
  def flex_payment

      @basis_points = params[:basis_points].to_f
      @years = params[:number_of_years].to_i
      @P = params[:present_value].to_f
    
      @r = @basis_points/(12*100)
      @N = @years*12
    
      @payment = @r*@P/(1-(1+@r)**(-@N)).round(2)
  #   @payment = @r*@P/(1-(1+@r)**(-@N))
    
    render("calculations/flex_payment_template.html.erb")
  end
  
  
  def random
  
    @min = params[:min].to_i
    @max = params[:max].to_i
    @range = @max - @min
    @random_number = (@min) + rand(@range)
  
      render("calculations/flex_random_template.html.erb")
  end
  
  
  ## Part II. FORM
  
  def square_form
    render("calculations/square_form_template.html.erb")
  end
  
  def process_square_form
    # The incoming parameters for this action look like {"the_user_number"=>"5"}
    # The_user_number maps to the NAME in the VIEW TEMPLATE
    # key in query string = key in params hash
    # Rails stores that hash in a variable called params
    # Now creating an instance variable...
    
    @the_user_number = params[:the_user_number].to_f
    @the_square = @the_user_number**2
    
    render("calculations/process_square_form_template.html.erb")
  end
  
  def square_root_form
    render("calculations/square_root_form_template.html.erb")
  end
  
  def process_square_root_form

    @user_number = params[:the_user_number].to_f
    @the_square_root = Math.sqrt(@user_number)

    render("calculations/process_square_root_form_template.html.erb")
  end
  
  
  def payment_form
    render("calculations/payment_form_template.html.erb")
  end
  
  def process_payment_form

      @basis_points = params[:basis_points].to_f
      @years = params[:number_of_years].to_i
      @P = params[:present_value].to_f
    
      @r = @basis_points/(12*100)
      @N = @years*12
    
      @payment = @r*@P/(1-(1+@r)**(-@N))

    render("calculations/process_payment_form_template.html.erb")    
    
  end
  
  def square_form
    render("calculations/square_form_template.html.erb")
  end
  
  def process_square_form
    # The incoming parameters for this action look like {"the_user_number"=>"5"}
    # The_user_number maps to the NAME in the VIEW TEMPLATE

    @the_user_number = params[:the_user_number].to_f
    @the_square = @the_user_number**2
    
    render("calculations/process_square_form_template.html.erb")
  end

  def random_form
      render("calculations/random_form_template.html.erb")
  end 
    
  def process_random_form 
    
    @min = params[:min].to_i
    @max = params[:max].to_i
    @range = @max - @min
    @random_number = (@min) + rand(@range)
  
      render("calculations/flex_random_template.html.erb")
  end
  
    
    render("calculations/process_random_form_template.html.erb")
  end