defmodule TeslaMateWeb.CarLive.Index do
  use Phoenix.LiveView

  alias TeslaMateWeb.CarView
  alias TeslaMate.Log

  @impl true
  def mount(_session, socket) do
    {:ok, fetch(socket)}
  end

  @impl true
  def render(assigns) do
    CarView.render("index.html", assigns)
  end

  defp fetch(socket) do
    assign(socket, cars: Log.list_cars())
  end
end
