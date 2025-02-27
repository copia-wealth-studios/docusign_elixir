# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.AuthenticationMethod do
  @moduledoc """
  Contains information about the method used for authentication.
  """

  @derive [Poison.Encoder]
  defstruct [
    :authenticationType,
    :lastProvider,
    :lastTimestamp,
    :totalCount
  ]

  @type t :: %__MODULE__{
          :authenticationType => String.t() | nil,
          :lastProvider => String.t() | nil,
          :lastTimestamp => String.t() | nil,
          :totalCount => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.AuthenticationMethod do
  def decode(value, _options) do
    value
  end
end
