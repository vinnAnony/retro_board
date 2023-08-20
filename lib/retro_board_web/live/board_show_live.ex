defmodule RetroBoardWeb.BoardShowLive do
  alias RetroBoard.Boards
  use RetroBoardWeb, :live_view
  require Logger

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def handle_params(%{"id" => id}, _, socket) do
    {:noreply,
      socket
      |>assign(:board, Boards.get_board!(id))
    }
  end
end
