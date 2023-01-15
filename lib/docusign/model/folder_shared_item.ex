# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.FolderSharedItem do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :errorDetails,
    :folderId,
    :name,
    :owner,
    :parentFolderId,
    :parentFolderUri,
    :shared,
    :sharedGroups,
    :sharedUsers,
    :uri,
    :user
  ]

  @type t :: %__MODULE__{
          :errorDetails => DocuSign.Model.ErrorDetails.t() | nil,
          :folderId => String.t() | nil,
          :name => String.t() | nil,
          :owner => DocuSign.Model.UserInfo.t() | nil,
          :parentFolderId => String.t() | nil,
          :parentFolderUri => String.t() | nil,
          :shared => String.t() | nil,
          :sharedGroups => [DocuSign.Model.MemberGroupSharedItem.t()] | nil,
          :sharedUsers => [DocuSign.Model.UserSharedItem.t()] | nil,
          :uri => String.t() | nil,
          :user => DocuSign.Model.UserInfo.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.FolderSharedItem do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:errorDetails, :struct, DocuSign.Model.ErrorDetails, options)
    |> deserialize(:owner, :struct, DocuSign.Model.UserInfo, options)
    |> deserialize(:sharedGroups, :list, DocuSign.Model.MemberGroupSharedItem, options)
    |> deserialize(:sharedUsers, :list, DocuSign.Model.UserSharedItem, options)
    |> deserialize(:user, :struct, DocuSign.Model.UserInfo, options)
  end
end
