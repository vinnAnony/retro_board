defmodule RetroBoardWeb.BoardLive do
  alias RetroBoard.Boards
  use RetroBoardWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {
      :ok,
      socket
      |> assign(:boards, Boards.list_boards())
      |> assign(:page_title, "Our Boards")
    }
  end
end
