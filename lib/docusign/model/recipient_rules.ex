# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.RecipientRules do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :conditionalRecipients
  ]

  @type t :: %__MODULE__{
          :conditionalRecipients => [DocuSign.Model.ConditionalRecipientRule.t()] | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.RecipientRules do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :conditionalRecipients,
      :list,
      DocuSign.Model.ConditionalRecipientRule,
      options
    )
  end
end
