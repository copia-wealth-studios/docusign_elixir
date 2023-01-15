# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.SigningGroup do
  @moduledoc """
  Contains details about a signing group. Signing groups enable you to send an envelope to a predefined group of recipients and have any one member of the group sign your documents. When you send an envelope to a signing group, anyone in the group can open it and sign it with their own signature.
  """

  @derive [Poison.Encoder]
  defstruct [
    :created,
    :createdBy,
    :errorDetails,
    :groupEmail,
    :groupName,
    :groupType,
    :modified,
    :modifiedBy,
    :signingGroupId,
    :users
  ]

  @type t :: %__MODULE__{
          :created => String.t() | nil,
          :createdBy => String.t() | nil,
          :errorDetails => DocuSign.Model.ErrorDetails.t() | nil,
          :groupEmail => String.t() | nil,
          :groupName => String.t() | nil,
          :groupType => String.t() | nil,
          :modified => String.t() | nil,
          :modifiedBy => String.t() | nil,
          :signingGroupId => String.t() | nil,
          :users => [DocuSign.Model.SigningGroupUser.t()] | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.SigningGroup do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:errorDetails, :struct, DocuSign.Model.ErrorDetails, options)
    |> deserialize(:users, :list, DocuSign.Model.SigningGroupUser, options)
  end
end
