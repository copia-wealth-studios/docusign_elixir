# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.BrandLink do
  @moduledoc """
  Information about a link that a brand uses.
  """

  @derive [Poison.Encoder]
  defstruct [
    :linkText,
    :linkType,
    :showLink,
    :urlOrMailTo
  ]

  @type t :: %__MODULE__{
          :linkText => String.t() | nil,
          :linkType => String.t() | nil,
          :showLink => String.t() | nil,
          :urlOrMailTo => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.BrandLink do
  def decode(value, _options) do
    value
  end
end
