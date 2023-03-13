# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.ConsumerDisclosure do
  @moduledoc """
  Details about consumer disclosures.
  """

  @derive [Poison.Encoder]
  defstruct [
    :accountEsignId,
    :allowCDWithdraw,
    :allowCDWithdrawMetadata,
    :changeEmail,
    :changeEmailOther,
    :companyName,
    :companyPhone,
    :copyCostPerPage,
    :copyFeeCollectionMethod,
    :copyRequestEmail,
    :custom,
    :enableEsign,
    :esignAgreement,
    :esignText,
    :languageCode,
    :mustAgreeToEsign,
    :pdfId,
    :useBrand,
    :useConsumerDisclosureWithinAccount,
    :useConsumerDisclosureWithinAccountMetadata,
    :withdrawAddressLine1,
    :withdrawAddressLine2,
    :withdrawByEmail,
    :withdrawByMail,
    :withdrawByPhone,
    :withdrawCity,
    :withdrawConsequences,
    :withdrawEmail,
    :withdrawOther,
    :withdrawPhone,
    :withdrawPostalCode,
    :withdrawState
  ]

  @type t :: %__MODULE__{
          :accountEsignId => String.t() | nil,
          :allowCDWithdraw => String.t() | nil,
          :allowCDWithdrawMetadata => DocuSign.Model.SettingsMetadata.t() | nil,
          :changeEmail => String.t() | nil,
          :changeEmailOther => String.t() | nil,
          :companyName => String.t() | nil,
          :companyPhone => String.t() | nil,
          :copyCostPerPage => String.t() | nil,
          :copyFeeCollectionMethod => String.t() | nil,
          :copyRequestEmail => String.t() | nil,
          :custom => String.t() | nil,
          :enableEsign => String.t() | nil,
          :esignAgreement => String.t() | nil,
          :esignText => String.t() | nil,
          :languageCode => String.t() | nil,
          :mustAgreeToEsign => String.t() | nil,
          :pdfId => String.t() | nil,
          :useBrand => String.t() | nil,
          :useConsumerDisclosureWithinAccount => String.t() | nil,
          :useConsumerDisclosureWithinAccountMetadata =>
            DocuSign.Model.SettingsMetadata.t() | nil,
          :withdrawAddressLine1 => String.t() | nil,
          :withdrawAddressLine2 => String.t() | nil,
          :withdrawByEmail => String.t() | nil,
          :withdrawByMail => String.t() | nil,
          :withdrawByPhone => String.t() | nil,
          :withdrawCity => String.t() | nil,
          :withdrawConsequences => String.t() | nil,
          :withdrawEmail => String.t() | nil,
          :withdrawOther => String.t() | nil,
          :withdrawPhone => String.t() | nil,
          :withdrawPostalCode => String.t() | nil,
          :withdrawState => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.ConsumerDisclosure do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:allowCDWithdrawMetadata, :struct, DocuSign.Model.SettingsMetadata, options)
    |> deserialize(
      :useConsumerDisclosureWithinAccountMetadata,
      :struct,
      DocuSign.Model.SettingsMetadata,
      options
    )
  end
end