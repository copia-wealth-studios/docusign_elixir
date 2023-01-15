# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.WorkspaceList do
  @moduledoc """
  This object contains a list of available workspaces.
  """

  @derive [Poison.Encoder]
  defstruct [
    :endPosition,
    :resultSetSize,
    :startPosition,
    :totalSetSize,
    :workspaces
  ]

  @type t :: %__MODULE__{
          :endPosition => String.t() | nil,
          :resultSetSize => String.t() | nil,
          :startPosition => String.t() | nil,
          :totalSetSize => String.t() | nil,
          :workspaces => [DocuSign.Model.Workspace.t()] | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.WorkspaceList do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:workspaces, :list, DocuSign.Model.Workspace, options)
  end
end
