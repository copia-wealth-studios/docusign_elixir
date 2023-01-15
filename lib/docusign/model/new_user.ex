# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.NewUser do
  @moduledoc """
  Object representing a new user.
  """

  @derive [Poison.Encoder]
  defstruct [
    :apiPassword,
    :createdDateTime,
    :email,
    :errorDetails,
    :membershipId,
    :permissionProfileId,
    :permissionProfileName,
    :uri,
    :userId,
    :userName,
    :userStatus
  ]

  @type t :: %__MODULE__{
          :apiPassword => String.t() | nil,
          :createdDateTime => String.t() | nil,
          :email => String.t() | nil,
          :errorDetails => DocuSign.Model.ErrorDetails.t() | nil,
          :membershipId => String.t() | nil,
          :permissionProfileId => String.t() | nil,
          :permissionProfileName => String.t() | nil,
          :uri => String.t() | nil,
          :userId => String.t() | nil,
          :userName => String.t() | nil,
          :userStatus => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.NewUser do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:errorDetails, :struct, DocuSign.Model.ErrorDetails, options)
  end
end
