# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.Recipients do
  @moduledoc """
  Specifies the envelope recipients.
  """

  @derive [Poison.Encoder]
  defstruct [
    :agents,
    :carbonCopies,
    :certifiedDeliveries,
    :currentRoutingOrder,
    :editors,
    :errorDetails,
    :inPersonSigners,
    :intermediaries,
    :notaries,
    :participants,
    :recipientCount,
    :seals,
    :signers,
    :witnesses
  ]

  @type t :: %__MODULE__{
          :agents => [DocuSign.Model.Agent.t()] | nil,
          :carbonCopies => [DocuSign.Model.CarbonCopy.t()] | nil,
          :certifiedDeliveries => [DocuSign.Model.CertifiedDelivery.t()] | nil,
          :currentRoutingOrder => String.t() | nil,
          :editors => [DocuSign.Model.Editor.t()] | nil,
          :errorDetails => DocuSign.Model.ErrorDetails.t() | nil,
          :inPersonSigners => [DocuSign.Model.InPersonSigner.t()] | nil,
          :intermediaries => [DocuSign.Model.Intermediary.t()] | nil,
          :notaries => [DocuSign.Model.NotaryRecipient.t()] | nil,
          :participants => [DocuSign.Model.Participant.t()] | nil,
          :recipientCount => String.t() | nil,
          :seals => [DocuSign.Model.SealSign.t()] | nil,
          :signers => [DocuSign.Model.Signer.t()] | nil,
          :witnesses => [DocuSign.Model.Witness.t()] | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.Recipients do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:agents, :list, DocuSign.Model.Agent, options)
    |> deserialize(:carbonCopies, :list, DocuSign.Model.CarbonCopy, options)
    |> deserialize(:certifiedDeliveries, :list, DocuSign.Model.CertifiedDelivery, options)
    |> deserialize(:editors, :list, DocuSign.Model.Editor, options)
    |> deserialize(:errorDetails, :struct, DocuSign.Model.ErrorDetails, options)
    |> deserialize(:inPersonSigners, :list, DocuSign.Model.InPersonSigner, options)
    |> deserialize(:intermediaries, :list, DocuSign.Model.Intermediary, options)
    |> deserialize(:notaries, :list, DocuSign.Model.NotaryRecipient, options)
    |> deserialize(:participants, :list, DocuSign.Model.Participant, options)
    |> deserialize(:seals, :list, DocuSign.Model.SealSign, options)
    |> deserialize(:signers, :list, DocuSign.Model.Signer, options)
    |> deserialize(:witnesses, :list, DocuSign.Model.Witness, options)
  end
end
