defmodule Mix.Tasks.Step0Repl do
  use Mix.Task

  def run(_) do
    loop()
  end

  def loop do
    IO.write("user>")
    rep IO.read(:stdio, :line)
  end


  def rep(:eof) do
    System.halt()
  end

  def rep(line) do
    read line
    |> eval
    |> print
  end

  def read(input), do: input
  def eval(input), do: input
  def print(output), do: IO.puts output
end
