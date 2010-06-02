class PeopleController < ApplicationController
  has_attached_file :photo ,:styles=>{:tiny => "100x100"}
end
