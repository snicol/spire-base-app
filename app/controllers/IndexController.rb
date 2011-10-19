class Index < Spire::MainController
  def index
    @title = "Spire - Light Web Framework"
    @header = "Welcome to Spire, the lightweight web framework!"
    render :view => "index.haml"
  end
end
