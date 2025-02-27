# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.EnvelopeEmailSettings do
  @moduledoc """
  Envelope email settings
  """

  @derive [Poison.Encoder]
  defstruct [
    :bccEmailAddresses,
    :replyEmailAddressOverride,
    :replyEmailNameOverride
  ]

  @type t :: %__MODULE__{
          :bccEmailAddresses => [DocuSign.Model.BccEmailAddress.t()] | nil,
          :replyEmailAddressOverride => String.t() | nil,
          :replyEmailNameOverride => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.EnvelopeEmailSettings do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:bccEmailAddresses, :list, DocuSign.Model.BccEmailAddress, options)
  end
end
