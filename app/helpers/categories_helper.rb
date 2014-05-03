module CategoriesHelper
	def get_short_desc(job)
		@short = job.description.split[0..25].join(' ')
		@short
	end

	def get_long_desc(job)
	end
end