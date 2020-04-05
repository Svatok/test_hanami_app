# Configure your routes here
# See: https://guides.hanamirb.org/routing/overview

resource :hello_world, only: :show

namespace :multithreading do
  get :threads, to: 'multithreading#threads'
  get :fibers, to: 'multithreading#fibers'
  get :processes, to: 'multithreading#processes'
end
