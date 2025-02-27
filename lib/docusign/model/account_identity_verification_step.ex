# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.AccountIdentityVerificationStep do
  @moduledoc """
  Information about a specific step in an Identity Verification workflow.
  """

  @derive [Poison.Encoder]
  defstruct [
    :name,
    :type
  ]

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :type => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.AccountIdentityVerificationStep do
  def decode(value, _options) do
    value
  end
end
