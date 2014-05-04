module CategoriesHelper
	def get_short_desc(job)
		@short = job.description.split[0..25].join(' ')
		@short
	end

	def get_long_desc(job)
		if job.description.length > @short.length
			' ' + job.description.split[26..(job.description.length-1)].join(' ')
		end
		# @long = ' ' + job.description.split[26..(job.description.length-1)].join(' ')
		# @long

	end
end