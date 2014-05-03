class Job < ActiveRecord::Base
<<<<<<< HEAD
   	belongs_to :agency
   	belongs_to :category
   	has_many :users_jobs
 	has_many :users, :through => :users_jobs
=======
   belongs_to :agency
   belongs_to :category
>>>>>>> 570bdfff03cae4d4b9214d03d2ca4f154bf673b4

   attr_accessible :agency_id, :category_id, :heading, :description, :location, :date

   validates :agency, :category, :heading, :description, :location, :date, :presence => true
   validates :heading, :location, :date, length: { maximum: 65 }
   validates :description, length: { maximum: 600 }

<<<<<<< HEAD
	def self.as_csv # http://richonrails.com/articles/exporting-to-csv-using-ruby-on-rails-3-and-ruby-1-9
	  CSV.generate do |csv|
	    csv << column_names
	    all.each do |item|
	      csv << item.attributes.values_at(*column_names)
	    end
	  end
	end
   
=======

>>>>>>> 570bdfff03cae4d4b9214d03d2ca4f154bf673b4
 end