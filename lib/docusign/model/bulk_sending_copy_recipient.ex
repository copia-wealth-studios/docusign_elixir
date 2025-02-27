# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.BulkSendingCopyRecipient do
  @moduledoc """
  This object contains details about a bulk send recipient.
  """

  @derive [Poison.Encoder]
  defstruct [
    :accessCode,
    :clientUserId,
    :customFields,
    :deliveryMethod,
    :email,
    :emailNotification,
    :embeddedRecipientStartURL,
    :faxNumber,
    :hostEmail,
    :hostName,
    :idCheckConfigurationName,
    :idCheckInformationInput,
    :identificationMethod,
    :name,
    :note,
    :phoneAuthentication,
    :recipientId,
    :recipientSignatureProviders,
    :roleName,
    :signerName,
    :signingGroupId,
    :smsAuthentication,
    :socialAuthentications,
    :tabs
  ]

  @type t :: %__MODULE__{
          :accessCode => String.t() | nil,
          :clientUserId => String.t() | nil,
          :customFields => [String.t()] | nil,
          :deliveryMethod => String.t() | nil,
          :email => String.t() | nil,
          :emailNotification => DocuSign.Model.RecipientEmailNotification.t() | nil,
          :embeddedRecipientStartURL => String.t() | nil,
          :faxNumber => String.t() | nil,
          :hostEmail => String.t() | nil,
          :hostName => String.t() | nil,
          :idCheckConfigurationName => String.t() | nil,
          :idCheckInformationInput => DocuSign.Model.IdCheckInformationInput.t() | nil,
          :identificationMethod => String.t() | nil,
          :name => String.t() | nil,
          :note => String.t() | nil,
          :phoneAuthentication => DocuSign.Model.RecipientPhoneAuthentication.t() | nil,
          :recipientId => String.t() | nil,
          :recipientSignatureProviders => [DocuSign.Model.RecipientSignatureProvider.t()] | nil,
          :roleName => String.t() | nil,
          :signerName => String.t() | nil,
          :signingGroupId => String.t() | nil,
          :smsAuthentication => DocuSign.Model.RecipientSmsAuthentication.t() | nil,
          :socialAuthentications => [DocuSign.Model.SocialAuthentication.t()] | nil,
          :tabs => [DocuSign.Model.BulkSendingCopyTab.t()] | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.BulkSendingCopyRecipient do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :emailNotification,
      :struct,
      DocuSign.Model.RecipientEmailNotification,
      options
    )
    |> deserialize(
      :idCheckInformationInput,
      :struct,
      DocuSign.Model.IdCheckInformationInput,
      options
    )
    |> deserialize(
      :phoneAuthentication,
      :struct,
      DocuSign.Model.RecipientPhoneAuthentication,
      options
    )
    |> deserialize(
      :recipientSignatureProviders,
      :list,
      DocuSign.Model.RecipientSignatureProvider,
      options
    )
    |> deserialize(
      :smsAuthentication,
      :struct,
      DocuSign.Model.RecipientSmsAuthentication,
      options
    )
    |> deserialize(:socialAuthentications, :list, DocuSign.Model.SocialAuthentication, options)
    |> deserialize(:tabs, :list, DocuSign.Model.BulkSendingCopyTab, options)
  end
end
