defmodule ListFilter do

require Integer


def call(list), do: list_filter(list)




def string_to_int(string) do
  case Integer.parse(string) do
    {int, _rest}->  [int]
    :error -> []
 end
end

  def list_filter(list) do
    Enum.flat_map(list, fn string -> string_to_int(string) end)
    |> Enum.filter(fn x -> Integer.is_odd(x) end)
    |>length()
  end



  def hello do
    :world
  end
end
