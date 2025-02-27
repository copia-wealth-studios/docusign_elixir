# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.FeatureSet do
  @moduledoc """
  This object provides details about a feature set, or add-on product that is associated with an account. It is reserved for DocuSign internal use only.
  """

  @derive [Poison.Encoder]
  defstruct [
    :currencyFeatureSetPrices,
    :envelopeFee,
    :featureSetId,
    :fixedFee,
    :is21CFRPart11,
    :isActive,
    :isEnabled,
    :name,
    :seatFee
  ]

  @type t :: %__MODULE__{
          :currencyFeatureSetPrices => [DocuSign.Model.CurrencyFeatureSetPrice.t()] | nil,
          :envelopeFee => String.t() | nil,
          :featureSetId => String.t() | nil,
          :fixedFee => String.t() | nil,
          :is21CFRPart11 => String.t() | nil,
          :isActive => String.t() | nil,
          :isEnabled => String.t() | nil,
          :name => String.t() | nil,
          :seatFee => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.FeatureSet do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :currencyFeatureSetPrices,
      :list,
      DocuSign.Model.CurrencyFeatureSetPrice,
      options
    )
  end
end
