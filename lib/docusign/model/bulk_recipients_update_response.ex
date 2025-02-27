# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.BulkRecipientsUpdateResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :signer
  ]

  @type t :: %__MODULE__{
          :signer => DocuSign.Model.Signer.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.BulkRecipientsUpdateResponse do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:signer, :struct, DocuSign.Model.Signer, options)
  end
end
