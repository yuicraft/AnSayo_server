class WikiController < ApplicationController
 def getting_data
  if Content.exists?(title: params[:title])
	cont = Content.find_by(title: params[:title])
	render json: {
	  "title": cont.title,
	  "context": cont.content
	}
  
  else
	head :bad_request
  end
 end
 def patching_data
  if Content.exists?(title: params[:title])
	cont = Content.find_by(title: params[:title])
 	cont.content = params[:content]
	head :ok if cont.save
	
  else
	Content.create(title: params[:title],content: params[:content])
	head :ok
  end
 end
end
