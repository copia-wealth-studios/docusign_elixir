# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.BulkSendBatchRequest do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :batchName
  ]

  @type t :: %__MODULE__{
          :batchName => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.BulkSendBatchRequest do
  def decode(value, _options) do
    value
  end
end
