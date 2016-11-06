# Q0: Why is this error being thrown?
The home controller's index method is being called, but pokemon objects haven't been defined yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
They are from the trainerless_pokemon.sample. They all don't have a trainer.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It creates a button action which calls the capture method in the pokemon controller.

# Question 3: What would you name your own Pokemon?
Burritosaur

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed the root_path in, which redirects to the homepage.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
application.html.erb provides default rendering of 'layouts/messages'. This allows for a standard convention to display error messages.

# Give us feedback on the project and decal below!
This project was pretty fun! I've enjoyed the decal overall.

# Extra credit: Link your Heroku deployed app
