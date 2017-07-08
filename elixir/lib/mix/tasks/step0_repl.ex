defmodule Mix.Tasks.Step0Repl do
  use Mix.Task

  def run(_) do
    loop()
  end

  def loop do
    IO.write("user> ")
    IO.read(:stdio, :line)
      |> read_eval_print
      |> IO.write

    loop()
  end


  def read(input) do
    input
  end


  def eval(input) do
    input
  end


  def print(input) do 
    input
  end


  def rep(:eof) do
    System.halt()
  end

  def read_eval_print(line) do
    read line
    |> eval
    |> print
  end
  
end
