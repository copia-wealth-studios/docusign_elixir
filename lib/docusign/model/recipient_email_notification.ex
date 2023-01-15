# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.RecipientEmailNotification do
  @moduledoc """
  Sets custom email subject and email body for individual recipients. **Note:** You must explicitly set `supportedLanguage` if you use this feature. 
  """

  @derive [Poison.Encoder]
  defstruct [
    :emailBody,
    :emailBodyMetadata,
    :emailSubject,
    :emailSubjectMetadata,
    :supportedLanguage,
    :supportedLanguageMetadata
  ]

  @type t :: %__MODULE__{
          :emailBody => String.t() | nil,
          :emailBodyMetadata => DocuSign.Model.PropertyMetadata.t() | nil,
          :emailSubject => String.t() | nil,
          :emailSubjectMetadata => DocuSign.Model.PropertyMetadata.t() | nil,
          :supportedLanguage => String.t() | nil,
          :supportedLanguageMetadata => DocuSign.Model.PropertyMetadata.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.RecipientEmailNotification do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:emailBodyMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:emailSubjectMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:supportedLanguageMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
  end
end
