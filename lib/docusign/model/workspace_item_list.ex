# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.WorkspaceItemList do
  @moduledoc """
  An array of objects that describe the items in a workspace.
  """

  @derive [Poison.Encoder]
  defstruct [
    :items
  ]

  @type t :: %__MODULE__{
          :items => [DocuSign.Model.WorkspaceItem.t()] | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.WorkspaceItemList do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:items, :list, DocuSign.Model.WorkspaceItem, options)
  end
end
