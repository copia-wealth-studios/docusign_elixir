# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.AccountCustomFields do
  @moduledoc """
  An `accountCustomField` is an envelope custom field that you set at the account level. Applying custom fields enables account administrators to group and manage envelopes. 
  """

  @derive [Poison.Encoder]
  defstruct [
    :listCustomFields,
    :textCustomFields
  ]

  @type t :: %__MODULE__{
          :listCustomFields => [DocuSign.Model.ListCustomField.t()] | nil,
          :textCustomFields => [DocuSign.Model.TextCustomField.t()] | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.AccountCustomFields do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:listCustomFields, :list, DocuSign.Model.ListCustomField, options)
    |> deserialize(:textCustomFields, :list, DocuSign.Model.TextCustomField, options)
  end
end
