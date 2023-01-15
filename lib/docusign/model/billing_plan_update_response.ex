# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.BillingPlanUpdateResponse do
  @moduledoc """
  Defines a billing plan update response object.
  """

  @derive [Poison.Encoder]
  defstruct [
    :accountPaymentMethod,
    :billingPlanPreview,
    :currencyCode,
    :includedSeats,
    :paymentCycle,
    :paymentMethod,
    :planId,
    :planName
  ]

  @type t :: %__MODULE__{
          :accountPaymentMethod => String.t() | nil,
          :billingPlanPreview => DocuSign.Model.BillingPlanPreview.t() | nil,
          :currencyCode => String.t() | nil,
          :includedSeats => String.t() | nil,
          :paymentCycle => String.t() | nil,
          :paymentMethod => String.t() | nil,
          :planId => String.t() | nil,
          :planName => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.BillingPlanUpdateResponse do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:billingPlanPreview, :struct, DocuSign.Model.BillingPlanPreview, options)
  end
end
