# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.EnvelopePublishTransactionErrorRollup do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :count,
    :errorType
  ]

  @type t :: %__MODULE__{
          :count => String.t() | nil,
          :errorType => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.EnvelopePublishTransactionErrorRollup do
  def decode(value, _options) do
    value
  end
end
