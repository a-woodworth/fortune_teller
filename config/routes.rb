Rails.application.routes.draw do
  get("/",        { :controller => "fortunes", :action => "lucky_numbers" })

  get("/lucky",   { :controller => "fortunes", :action => "lucky_numbers" })
  get("/unlucky", { :controller => "fortunes", :action => "unlucky_numbers" })

  # PART 2: VARIABLE ROUTES
  # =======================

  # Routes for adding a new Zodiac (CREATE)
  get("/zodiacs/new", { :controller => "zodiacs", :action => "new_form" })
  get("/create_zodiac", { :controller => "zodiacs", :action => "create" })

  # Route for editing Zodiacs
  get("/zodiacs/edit", { :controller => "zodiacs", :action => "edit" })

  # Route for deleting Zodiacs
  get("/zodiacs/delete", { :controller => "zodiacs", :action => "delete_form" })
  get("/delete_zodiac", { :controller => "zodiacs", :action => "delete" })

  # Routes for reading Zodiacs (READ)
  get("/all_zodiacs", { :controller => "zodiacs", :action => "index" })
  get("/zodiacs/:id", { :controller => "zodiacs", :action => "show" })

  #get("/signs/:the_sign",         { :controller => "zodiacs", :action => "sign" })
  #get("/creatures/:the_creature", { :controller => "zodiacs", :action => "creature" })

end










