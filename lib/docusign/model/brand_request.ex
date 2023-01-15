# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.BrandRequest do
  @moduledoc """
  This request object contains information about a specific brand.
  """

  @derive [Poison.Encoder]
  defstruct [
    :brandId
  ]

  @type t :: %__MODULE__{
          :brandId => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.BrandRequest do
  def decode(value, _options) do
    value
  end
end
