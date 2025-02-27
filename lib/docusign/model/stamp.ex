# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.Stamp do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :adoptedDateTime,
    :createdDateTime,
    :customField,
    :dateStampProperties,
    :disallowUserResizeStamp,
    :errorDetails,
    :externalID,
    :imageBase64,
    :imageType,
    :lastModifiedDateTime,
    :phoneticName,
    :signatureName,
    :stampFormat,
    :stampImageUri,
    :stampSizeMM,
    :status
  ]

  @type t :: %__MODULE__{
          :adoptedDateTime => String.t() | nil,
          :createdDateTime => String.t() | nil,
          :customField => String.t() | nil,
          :dateStampProperties => DocuSign.Model.DateStampProperties.t() | nil,
          :disallowUserResizeStamp => String.t() | nil,
          :errorDetails => DocuSign.Model.ErrorDetails.t() | nil,
          :externalID => String.t() | nil,
          :imageBase64 => String.t() | nil,
          :imageType => String.t() | nil,
          :lastModifiedDateTime => String.t() | nil,
          :phoneticName => String.t() | nil,
          :signatureName => String.t() | nil,
          :stampFormat => String.t() | nil,
          :stampImageUri => String.t() | nil,
          :stampSizeMM => String.t() | nil,
          :status => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.Stamp do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:dateStampProperties, :struct, DocuSign.Model.DateStampProperties, options)
    |> deserialize(:errorDetails, :struct, DocuSign.Model.ErrorDetails, options)
  end
end
