# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.EmailSettings do
  @moduledoc """
  A complex element that allows  the sender to override some envelope email setting information. This can be used to override the Reply To email address and name associated with the envelope and to override the BCC email addresses to which an envelope is sent.   When the emailSettings information is used for an envelope, it only applies to that envelope.   **IMPORTANT:** The emailSettings information is not returned in the GET for envelope status. Use GET /email_settings to return information about the emailSettings.   EmailSettings consists of:   * replyEmailAddressOverride - The Reply To email used for the envelope. DocuSign will verify that a correct email format is used, but does not verify that the email is active. Maximum Length: 100 characters. * replyEmailNameOverride - The name associated with the Reply To email address. Maximum Length: 100 characters. * bccEmailAddresses - An array of up to five email addresses to which the envelope is sent to as a BCC email. Only users with canManageAccount setting set to true can use this option.  DocuSign verifies that the email format is correct, but does not verify that the email is active. Using this overrides the BCC for Email Archive information setting for this envelope. Maximum Length: 100 characters. *Example*: if your account has BCC for Email Archive set up for the email address 'archive@mycompany.com' and you send an envelope using the BCC Email Override to send a BCC email to 'salesarchive@mycompany.com', then a copy of the envelope is only sent to the 'salesarchive@mycompany.com' email address.
  """

  @derive [Poison.Encoder]
  defstruct [
    :bccEmailAddresses,
    :replyEmailAddressOverride,
    :replyEmailNameOverride
  ]

  @type t :: %__MODULE__{
          :bccEmailAddresses => [DocuSign.Model.BccEmailAddress.t()] | nil,
          :replyEmailAddressOverride => String.t() | nil,
          :replyEmailNameOverride => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.EmailSettings do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:bccEmailAddresses, :list, DocuSign.Model.BccEmailAddress, options)
  end
end
