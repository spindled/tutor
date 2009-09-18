ActionController::Routing::Routes.draw do |map|
  map.posts '/posts', :controller => :posts, :action => :index_all, :conditions => { :method => :get }
  map.tagged '/lessons/tagged/:id', :controller => :lessons, :action => :tagged, :conditions => { :method => :get }
  map.resources :lessons, :has_many => :posts
  map.root :controller => :main, :conditions => { :method => :get }
end
