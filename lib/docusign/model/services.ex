# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.Services do
  @moduledoc """
  API service information
  """

  @derive [Poison.Encoder]
  defstruct [
    :buildBranch,
    :buildBranchDeployedDateTime,
    :buildSHA,
    :buildVersion,
    :linkedSites,
    :serviceVersions
  ]

  @type t :: %__MODULE__{
          :buildBranch => String.t() | nil,
          :buildBranchDeployedDateTime => String.t() | nil,
          :buildSHA => String.t() | nil,
          :buildVersion => String.t() | nil,
          :linkedSites => [String.t()] | nil,
          :serviceVersions => [DocuSign.Model.ServiceVersion.t()] | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.Services do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:serviceVersions, :list, DocuSign.Model.ServiceVersion, options)
  end
end
