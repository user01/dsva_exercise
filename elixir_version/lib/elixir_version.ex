defmodule ElixirVersion do
  
  def trial(x) do
    {:ok,runs} = cc(x)
    "For value #{x} required #{runs} runs"
  end

  def trial_simple(x) do
    {:ok,runs} = cc(x)
    runs
  end

  defp cc(x,runs\\0)

  defp cc(_,runs) when runs > 500 do
    {:error,"Overlimit"}
  end
  
  defp cc(1,runs) do
    {:ok,runs}
  end

  defp cc(x,runs) do
    case rem(x,2) do
      0 -> cc(div(x,2),runs+1)
      _ -> cc(1 + (x * 3),runs+1)
    end
  end
end

# IO.puts("Start")
# 1..30 |> Enum.map(&(ElixirVersion.trial(&1))) |> Enum.join("\n") |> IO.puts