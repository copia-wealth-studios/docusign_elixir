# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.ChunkedUploadPart do
  @moduledoc """
  An object that contains information about the chunked upload part.
  """

  @derive [Poison.Encoder]
  defstruct [
    :sequence,
    :size
  ]

  @type t :: %__MODULE__{
          :sequence => String.t() | nil,
          :size => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.ChunkedUploadPart do
  def decode(value, _options) do
    value
  end
end
