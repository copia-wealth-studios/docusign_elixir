# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.NotaryJurisdictionList do
  @moduledoc """
  A paged list of jurisdictions.
  """

  @derive [Poison.Encoder]
  defstruct [
    :endPosition,
    :nextUri,
    :notaryJurisdictions,
    :previousUri,
    :resultSetSize,
    :startPosition,
    :totalSetSize
  ]

  @type t :: %__MODULE__{
          :endPosition => String.t() | nil,
          :nextUri => String.t() | nil,
          :notaryJurisdictions => [DocuSign.Model.NotaryJurisdiction.t()] | nil,
          :previousUri => String.t() | nil,
          :resultSetSize => String.t() | nil,
          :startPosition => String.t() | nil,
          :totalSetSize => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.NotaryJurisdictionList do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:notaryJurisdictions, :list, DocuSign.Model.NotaryJurisdiction, options)
  end
end
