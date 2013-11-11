AddressToCoords::Application.routes.draw do
  get("/coords", { :controller => "addresses", :action => "fetch_coordinates" })
  get("/create_address", { :controller => "addresses", :action => "get_coordinates" })
end
