defmodule ExAws.ConfigTest do
  alias ExAws.Config
  use ExUnit.Case, async: true

  test "#namespace" do
    name = %{TableName: "Foo"} |> Config.namespace(:dynamo)
    assert name == %{TableName: "Foo-staging"}
  end

  test "#namespace atom" do
    assert Config.namespace(:foo, :dynamo) == "foo-staging"
  end
end
