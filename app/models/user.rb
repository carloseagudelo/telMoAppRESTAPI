class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

   has_attached_file :logo,
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
    :dropbox_options => {:path => proc {|style| "Moteles/#{id}/#{logo.original_filename}"}}

  belongs_to :type
  belongs_to :country

  do_not_validate_attachment_file_type :logo

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end
