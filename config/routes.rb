Rails.application.routes.draw do
  
  resources "places"
  get("/places", {:controller => "places", :action => "index"})
  get("/places/new", {:controller => "places", :action => "new"})
  post("/places", {:controller => "places", :action => "create"})
  get("/places/:id", {:controller => "places", :action => "show"})

  resources "entries"
  # get("/entries", {:controller => "entries", :action => "index"})
  get("/entries/new", {:controller => "entries", :action => "new"})
  post("/entries", {:controller => "places", :action => "create"})

end