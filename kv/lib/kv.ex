defmodule Kata do
  alias Kata
  @moduledoc """
  Documentation for Kata.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Kata.hello
      :world

  """
  def build() do
    column = "abcdefghijklmnopqrstuvwxyz"
    map =
    Enum.map(0..25, fn (n) ->
      l =
      Enum.map(n..25, fn (n)->
        String.at(column, n)
      end)
      List.flatten(l, Enum.map(0..n, fn (n)-> String.at(column, n) end))
    end)
  end

  def map_words() do
    column = "abcdefghijklmnopqrstuvwxyz"
    String.graphemes(column)
    |> Stream.with_index(0)
    |> Enum.reduce(%{}, fn({v,k}, acc)-> Map.put(acc, v, k) end)
  end

  def result() do
    word = "meetmebythetree"
    key =  Kata.key_times("scones", word)
    matrix = Kata.build
    words_maps = Kata.map_words
    Enum.map(0..14, fn (index)->
      Enum.at(Enum.at(matrix, words_maps[String.at(word, index)]), words_maps[String.at(key, index)])
    end)
  end

  def key_times(key, word) do
    word = String.length(word)
    String.duplicate(key, String.length(key))
    |> String.slice(0..word-1)
  end

  def decode do
    word = "egsgqwtahuiljgs"
    key =  "sconessconessco"
    matrix = Kata.build
    words_maps = Kata.map_words
    Enum.map(0..14, fn (index)->
      Enum.at(Enum.at(matrix, words_maps[String.at(word, index)]), words_maps[String.at(key, index)])
    end)
  end

  def create_maxtrix() do
    matrix = Matrix.new(26,26)
    Enum.map(1..26, fn (n) ->
      Enum.map(1..26, fn (n)->
        matrix = Matrix.set(matrix, 0, 0, 10)
      end)
    end)
    matrix
  end

  def hello do
    :world
  end
end
