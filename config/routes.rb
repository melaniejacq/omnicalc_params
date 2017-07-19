Rails.application.routes.draw do
  
  get("/flexible/square/:number", { :controller => "calculations", :action => "flex_square"})
  get("/flexible/square_root/:number", { :controller => "calculations", :action => "flex_square_root" })
  get("/flexible/payment/:basis_points/:number_of_years/:present_value", { :controller => "calculations", :action => "flex_payment" })
  get("/flexible/random/:min/:max", { :controller => "calculations", :action => "random" })
  
  # Part II. FORMS
  
  get("/square/new", { :controller => "calculations", :action => "square_form" })
  get("/square/results", { :controller=> "calculations", :action => "process_square_form" })
 
  get("/square_root/new", { :controller => "calculations", :action => "square_root_form" })
  get("/square_root/results", { :controller => "calculations", :action => "process_square_root_form" })
  
  get("/payment/new",     { :controller => "calculations", :action => "payment_form" })
  get("/payment/results", { :controller => "calculations", :action => "process_payment_form" })

  get("/random/new", { :controller => "calculations", :action => "random_form" })
  get("/random/results", { :controller => "calculations", :action => "process_random_form" })
 
  # Part III. OTHER CALCS
  
  # get("/word_count/new", { :controller => "calculations", :action => "xx" })
  # get("/descriptive_stats/new", { :controller => "calculations", :action => "xx" })
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end