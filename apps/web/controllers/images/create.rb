module Web::Controllers::Images
  class Create
    include Web::Action

    def call(params)
      tempfile = params[:image][:tempfile]

      image = Image.new(name: params[:name], description: params[:description], image: ::File.open(tempfile))
      image = ImageRepository.new.create(image)

      redirect_to routes.url(:image, image.id)
    end
  end
end
