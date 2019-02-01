module VideosHelper
    def url_to_id(url)
        id_video = url.split('=').last
        video_url = "https://www.youtube.com/embed/#{id_video}?autoplay=1"
    end
end
