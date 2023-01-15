# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.BillingPlanPreview do
  @moduledoc """
  Information used to provide a preview of a billing plan.
  """

  @derive [Poison.Encoder]
  defstruct [
    :currencyCode,
    :invoice,
    :isProrated,
    :subtotalAmount,
    :taxAmount,
    :totalAmount
  ]

  @type t :: %__MODULE__{
          :currencyCode => String.t() | nil,
          :invoice => DocuSign.Model.BillingInvoice.t() | nil,
          :isProrated => String.t() | nil,
          :subtotalAmount => String.t() | nil,
          :taxAmount => String.t() | nil,
          :totalAmount => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.BillingPlanPreview do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:invoice, :struct, DocuSign.Model.BillingInvoice, options)
  end
end
