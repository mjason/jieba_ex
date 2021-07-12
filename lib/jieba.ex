defmodule Jieba do
  use Rustler, otp_app: :jieba, crate: "jieba"

  @spec cut(binary) :: list(binary)
  def cut(_txt), do: error()

  defp error(), do: :erlang.nif_error(:nif_not_loaded)
end
