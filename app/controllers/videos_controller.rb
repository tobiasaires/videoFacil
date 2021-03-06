class VideosController < ApplicationController
    
    before_action :find_video, only: [:show, :edit, :update, :destroy]
    before_action :find_category, only: [:new, :edit]
    before_action :find_video_by_category, only: [:video_json]
    
    def new
        @video = Video.new
        unless @categories.any?
            render 'erro'
        end
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
        @category_id = @video.category_id
        @category = Category.find(@category_id).name   
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

    def video_json
        if @video.any?
            @category = Category.find(params[:id]).name
            render json: {status: 200, category: @category  ,video: @video.as_json(only: [:url, :title])}
        else
            render json: {status: 404,
                message: "Não há videos cadastrados ou categoria inexistente"
            }
        end
    end



    private
        
        def video_params
            params.require(:video).permit(:url, :title, :category_id)
        end

        def find_video
            @video = Video.find(params[:id])
        end

        def find_category
            @categories = Category.all.map{ |c| [c.name, c.id] }
        end

        def find_video_by_category
            @video = Video.where(category_id: params[:id])
        end

end
