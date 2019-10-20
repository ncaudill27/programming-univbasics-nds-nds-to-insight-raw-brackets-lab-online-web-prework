$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

<<<<<<< HEAD
def directors_totals(nds)
=======
def directer_totals(nds)
>>>>>>> 0862a7e6aaac36f9ce6771689567e13c7c72befc
	result = {}
	# First we must iterate through an Array of Hashes
	outer_shell = 0
	while outer_shell < nds.length do
		# Now that we have the Hashes. We can now access :name and :movies, the latter being an AoH.
		# Then we begin to iterate through the :movies tag paired alongside :name, remember, this tag points to an AoH.
		director = nds[outer_shell][:name] # Save the :name location.
		iter_movies = 0
		gross_values = [] # Vessel for :worldwide_gross.
		while iter_movies < nds[outer_shell][:movies].length do
			# Finally we have access to the lowest level keys(:title,:studio,:worldwide_gross,:release_year)
			inner_key = nds[outer_shell][:movies][iter_movies] # Save "key" to access other values if needed.
			gross_values << inner_key[:worldwide_gross] # Shovel values into vessel for extraction.
			iter_movies += 1
		end
		# Add saved director location and values vessel into Hash form. Preparing for return.
<<<<<<< HEAD
		result.store(director, gross_values.sum)
=======
		result.store(director, gross_values.sum.to_s)
>>>>>>> 0862a7e6aaac36f9ce6771689567e13c7c72befc
		outer_shell += 1
	end
	result
end
