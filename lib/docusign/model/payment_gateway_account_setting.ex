# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.PaymentGatewayAccountSetting do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :apiFields,
    :authorizationCode,
    :credentialStatus,
    :merchantId
  ]

  @type t :: %__MODULE__{
          :apiFields => String.t() | nil,
          :authorizationCode => String.t() | nil,
          :credentialStatus => String.t() | nil,
          :merchantId => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.PaymentGatewayAccountSetting do
  def decode(value, _options) do
    value
  end
end
