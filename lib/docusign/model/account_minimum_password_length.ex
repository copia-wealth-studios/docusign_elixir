# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.AccountMinimumPasswordLength do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :maximumLength,
    :minimumLength
  ]

  @type t :: %__MODULE__{
          :maximumLength => String.t(),
          :minimumLength => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.AccountMinimumPasswordLength do
  def decode(value, _options) do
    value
  end
end