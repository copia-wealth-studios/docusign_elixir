# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.WorkspaceItem do
  @moduledoc """
  This object represents an item in a workspace, which can be either a file or folder.
  """

  @derive [Poison.Encoder]
  defstruct [
    :callerAuthorization,
    :contentType,
    :created,
    :createdById,
    :createdByInformation,
    :extension,
    :fileSize,
    :fileUri,
    :id,
    :isPublic,
    :lastModified,
    :lastModifiedById,
    :lastModifiedByInformation,
    :name,
    :pageCount,
    :parentFolderId,
    :parentFolderUri,
    :sha256,
    :thumbHeight,
    :thumbnail,
    :thumbWidth,
    :type,
    :uri,
    :userAuthorization
  ]

  @type t :: %__MODULE__{
          :callerAuthorization => DocuSign.Model.WorkspaceUserAuthorization.t() | nil,
          :contentType => String.t() | nil,
          :created => String.t() | nil,
          :createdById => String.t() | nil,
          :createdByInformation => DocuSign.Model.WorkspaceUser.t() | nil,
          :extension => String.t() | nil,
          :fileSize => String.t() | nil,
          :fileUri => String.t() | nil,
          :id => String.t() | nil,
          :isPublic => String.t() | nil,
          :lastModified => String.t() | nil,
          :lastModifiedById => String.t() | nil,
          :lastModifiedByInformation => DocuSign.Model.WorkspaceUser.t() | nil,
          :name => String.t() | nil,
          :pageCount => String.t() | nil,
          :parentFolderId => String.t() | nil,
          :parentFolderUri => String.t() | nil,
          :sha256 => String.t() | nil,
          :thumbHeight => String.t() | nil,
          :thumbnail => DocuSign.Model.Page.t() | nil,
          :thumbWidth => String.t() | nil,
          :type => String.t() | nil,
          :uri => String.t() | nil,
          :userAuthorization => DocuSign.Model.WorkspaceUserAuthorization.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.WorkspaceItem do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :callerAuthorization,
      :struct,
      DocuSign.Model.WorkspaceUserAuthorization,
      options
    )
    |> deserialize(:createdByInformation, :struct, DocuSign.Model.WorkspaceUser, options)
    |> deserialize(:lastModifiedByInformation, :struct, DocuSign.Model.WorkspaceUser, options)
    |> deserialize(:thumbnail, :struct, DocuSign.Model.Page, options)
    |> deserialize(
      :userAuthorization,
      :struct,
      DocuSign.Model.WorkspaceUserAuthorization,
      options
    )
  end
end
