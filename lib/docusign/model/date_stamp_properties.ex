# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.DateStampProperties do
  @moduledoc """
  Specifies the area in which a date stamp is placed. This parameter uses pixel positioning to draw a rectangle at the center of the stamp area. The stamp is superimposed on top of this central area.  This property contains the following information about the central rectangle:  - `DateAreaX`: The X axis position of the top-left corner. - `DateAreaY`: The Y axis position of the top-left corner. - `DateAreaWidth`: The width of the rectangle. - `DateAreaHeight`: The height of the rectangle.
  """

  @derive [Poison.Encoder]
  defstruct [
    :dateAreaHeight,
    :dateAreaWidth,
    :dateAreaX,
    :dateAreaY
  ]

  @type t :: %__MODULE__{
          :dateAreaHeight => String.t() | nil,
          :dateAreaWidth => String.t() | nil,
          :dateAreaX => String.t() | nil,
          :dateAreaY => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.DateStampProperties do
  def decode(value, _options) do
    value
  end
end
