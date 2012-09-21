Rizzo::Application.routes.draw do
  match 'head' => 'head#index'  
  match 'global'                => 'global_resources#index'
  match 'global-head'           => 'global_resources#head'
  match 'global-body-header'    => 'global_resources#header'
  match 'global-body-footer'    => 'global_resources#footer'
  match 'breadcrumb'            => 'global_resources#breadcrumb'
  match "r/:encrypted_url"      => 'redirector#show', :as => :redirector
end if defined?(Rizzo::Application)
