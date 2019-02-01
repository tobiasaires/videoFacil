class VideosController < ApplicationController
    
    before_action :find_video, only: [:show, :edit, :update, :destroy]
    
    def new
        @video = Video.new
        @categories = Category.all.map{ |c| [c.name, c.id] }
    end
    
    def create
        @video = Video.new(video_params)
        @video.category_id = params[:category_id]
        if @video.save()
            redirect_to root_path
        else 
            render 'new'
        end
    end
    
    def show   
    end
    
    def edit
    end

    def update
        if @video.update(video_params)
            redirect_to video_path
        else 
            redirect_to 'edit'
        end
    end

    def destroy
        @video.destroy
        redirect_to root_path
    end


    private
        
        def video_params
            params.require(:video).permit(:url, :title, :category_id)
        end

        def find_video
            @video = Video.find(params[:id])
        end
end
