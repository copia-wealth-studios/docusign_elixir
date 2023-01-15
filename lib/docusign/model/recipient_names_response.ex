# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.RecipientNamesResponse do
  @moduledoc """
  This response object contains a list of recipients.
  """

  @derive [Poison.Encoder]
  defstruct [
    :multipleUsers,
    :recipientNames,
    :reservedRecipientEmail
  ]

  @type t :: %__MODULE__{
          :multipleUsers => String.t() | nil,
          :recipientNames => [String.t()] | nil,
          :reservedRecipientEmail => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.RecipientNamesResponse do
  def decode(value, _options) do
    value
  end
end
