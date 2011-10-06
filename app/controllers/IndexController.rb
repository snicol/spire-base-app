class Index < Spire::MainController
  def index
    @title = "Spire - Light Web Framework"
    @header = "Welcome to Spire, the lightweight web framework!"
    render("index.haml")
  end
end
