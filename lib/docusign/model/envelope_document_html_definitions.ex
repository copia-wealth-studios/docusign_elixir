# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.EnvelopeDocumentHtmlDefinitions do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :htmlDefinitions
  ]

  @type t :: %__MODULE__{
          :htmlDefinitions => [DocuSign.Model.DocumentHtmlDefinitionOriginal.t()] | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.EnvelopeDocumentHtmlDefinitions do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :htmlDefinitions,
      :list,
      DocuSign.Model.DocumentHtmlDefinitionOriginal,
      options
    )
  end
end
