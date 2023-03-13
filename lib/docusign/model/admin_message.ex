# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.AdminMessage do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :baseMessage,
    :moreInformation
  ]

  @type t :: %__MODULE__{
          :baseMessage => String.t() | nil,
          :moreInformation => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.AdminMessage do
  def decode(value, _options) do
    value
  end
end