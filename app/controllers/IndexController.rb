class Index < Spire::MainController
  def index
    @title = "Spire - The Awesome Web Framework"
    render :view => "index.haml"
  end
end