Rails.application.routes.draw do
	resources :appearances, only: [:new, :create, :index]
	resources :guests, only: [:index, :show]
	resources :episodes, only: [:index, :show]
end

# I know that either Ian, Otha or Gracie was going
# to check if I was explict about my routes, so I decided
# to add notes about the additions that I made after I
# completed all the deliverables. I alteast wanted to state
# that I understood what each deliverable was asking for,
# and I used the extra time to add in features that would
# help whoever is reviewing my code challenge, as well as
# some things I wanted to test myself with.

# Here is a description about the links:

# - Deliverable #1 requires the creation of an appearances table
#	with a guest rating column and 2 foreign keys, so I added a
#	route to config/routes and a link to appearances/index in
#	views/layouts/application.html.erb in order to view all the
#	data within the appearances table, even though I know a route
#	to appearance/index was not a requirement.


# - Deliverable #2 links to appearances/new in order to create a new
#	appearance. Pretty straight forward here.

# - Deliverable #3 links to the guests/index page. Pretty straight forward
#	once again

# - Deliverable #4 links to episodes/index, which was not required in the deliverables,
#	but I decided to keep it and use it so that it is easier to navigate to episodes/show,
#	which is what was needed in this deliverable.

# Other Additions:

# - added server side validations for appearances/new
# - added cancel button to appearances/new
# - added link_to's to episodes/index
# - added if/else to episodes/show for episodes with no guests
# - added if/else to guests/show for guests that have not appeared in any episodes
# - added episodes a guest has been in to guests/show