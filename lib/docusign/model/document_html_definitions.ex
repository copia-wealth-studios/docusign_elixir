# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.DocumentHtmlDefinitions do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :htmlDefinitions
  ]

  @type t :: %__MODULE__{
          :htmlDefinitions => [String.t()] | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.DocumentHtmlDefinitions do
  def decode(value, _options) do
    value
  end
end
