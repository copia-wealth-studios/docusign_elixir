# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.AccountSignatureProvider do
  @moduledoc """
  Contains information about the signature provider associated with the Identity Verification workflow. If empty, then this specific workflow is not intended for signers. 
  """

  @derive [Poison.Encoder]
  defstruct [
    :isRequired,
    :priority,
    :signatureProviderDisplayName,
    :signatureProviderId,
    :signatureProviderName,
    :signatureProviderOptionsMetadata,
    :signatureProviderRequiredOptions
  ]

  @type t :: %__MODULE__{
          :isRequired => String.t() | nil,
          :priority => String.t() | nil,
          :signatureProviderDisplayName => String.t() | nil,
          :signatureProviderId => String.t() | nil,
          :signatureProviderName => String.t() | nil,
          :signatureProviderOptionsMetadata =>
            [DocuSign.Model.AccountSignatureProviderOption.t()] | nil,
          :signatureProviderRequiredOptions =>
            [DocuSign.Model.SignatureProviderRequiredOption.t()] | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.AccountSignatureProvider do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :signatureProviderOptionsMetadata,
      :list,
      DocuSign.Model.AccountSignatureProviderOption,
      options
    )
    |> deserialize(
      :signatureProviderRequiredOptions,
      :list,
      DocuSign.Model.SignatureProviderRequiredOption,
      options
    )
  end
end
