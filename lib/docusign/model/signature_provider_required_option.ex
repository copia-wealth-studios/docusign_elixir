# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.SignatureProviderRequiredOption do
  @moduledoc """
  Contains additional information that a specific signature provider requires.
  """

  @derive [Poison.Encoder]
  defstruct [
    :requiredSignatureProviderOptionIds,
    :signerType
  ]

  @type t :: %__MODULE__{
          :requiredSignatureProviderOptionIds => [String.t()] | nil,
          :signerType => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.SignatureProviderRequiredOption do
  def decode(value, _options) do
    value
  end
end
