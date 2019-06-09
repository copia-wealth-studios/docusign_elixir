# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

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
          :accountPaymentMethod => String.t(),
          :billingPlanPreview => BillingPlanPreview,
          :currencyCode => String.t(),
          :includedSeats => String.t(),
          :paymentCycle => String.t(),
          :paymentMethod => String.t(),
          :planId => String.t(),
          :planName => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.BillingPlanUpdateResponse do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:billingPlanPreview, :struct, DocuSign.Model.BillingPlanPreview, options)
  end
end