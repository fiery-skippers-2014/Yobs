class Job < ActiveRecord::Base

   	belongs_to :agency
   	belongs_to :category
   	has_many :interests
 	has_many :users, :through => :interests

   attr_accessible :agency_id, :category_id, :heading, :description, :location, :date

   validates :agency, :category, :heading, :description, :location, :date, :presence => true
   validates :heading, :location, :date, length: { maximum: 65 }
   validates :description, length: { maximum: 600 }


	def self.as_csv # http://richonrails.com/articles/exporting-to-csv-using-ruby-on-rails-3-and-ruby-1-9
	  CSV.generate do |csv|
	    csv << column_names
	    all.each do |item|
	      csv << item.attributes.values_at(*column_names)
	    end
	  end
	end
   
 end