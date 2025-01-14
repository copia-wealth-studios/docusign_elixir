# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.BulkSendBatchActionRequest do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :action,
    :notification,
    :voidReason
  ]

  @type t :: %__MODULE__{
          :action => String.t() | nil,
          :notification => DocuSign.Model.Notification.t() | nil,
          :voidReason => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.BulkSendBatchActionRequest do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:notification, :struct, DocuSign.Model.Notification, options)
  end
end
