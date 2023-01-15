# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.PaymentGatewayAccountsInfo do
  @moduledoc """
  Holds information about connected payment accounts.
  """

  @derive [Poison.Encoder]
  defstruct [
    :paymentGatewayAccounts
  ]

  @type t :: %__MODULE__{
          :paymentGatewayAccounts => [DocuSign.Model.PaymentGatewayAccount.t()] | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.PaymentGatewayAccountsInfo do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:paymentGatewayAccounts, :list, DocuSign.Model.PaymentGatewayAccount, options)
  end
end
