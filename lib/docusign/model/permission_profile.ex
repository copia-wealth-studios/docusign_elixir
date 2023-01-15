# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.PermissionProfile do
  @moduledoc """
  This object defines the account permissions for a profile that you can apply to a group of users.
  """

  @derive [Poison.Encoder]
  defstruct [
    :modifiedByUsername,
    :modifiedDateTime,
    :permissionProfileId,
    :permissionProfileName,
    :settings,
    :userCount,
    :users
  ]

  @type t :: %__MODULE__{
          :modifiedByUsername => String.t() | nil,
          :modifiedDateTime => String.t() | nil,
          :permissionProfileId => String.t() | nil,
          :permissionProfileName => String.t() | nil,
          :settings => DocuSign.Model.AccountRoleSettings.t() | nil,
          :userCount => String.t() | nil,
          :users => [DocuSign.Model.UserInformation.t()] | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.PermissionProfile do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:settings, :struct, DocuSign.Model.AccountRoleSettings, options)
    |> deserialize(:users, :list, DocuSign.Model.UserInformation, options)
  end
end
