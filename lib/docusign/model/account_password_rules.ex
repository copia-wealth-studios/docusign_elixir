# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.AccountPasswordRules do
  @moduledoc """
  Contains details about the password rules for an account.
  """

  @derive [Poison.Encoder]
  defstruct [
    :expirePassword,
    :expirePasswordDays,
    :expirePasswordDaysMetadata,
    :lockoutDurationMinutes,
    :lockoutDurationMinutesMetadata,
    :lockoutDurationType,
    :lockoutDurationTypeMetadata,
    :minimumPasswordAgeDays,
    :minimumPasswordAgeDaysMetadata,
    :minimumPasswordLength,
    :minimumPasswordLengthMetadata,
    :passwordIncludeDigit,
    :passwordIncludeDigitOrSpecialCharacter,
    :passwordIncludeLowerCase,
    :passwordIncludeSpecialCharacter,
    :passwordIncludeUpperCase,
    :passwordStrengthType,
    :passwordStrengthTypeMetadata,
    :questionsRequired,
    :questionsRequiredMetadata
  ]

  @type t :: %__MODULE__{
          :expirePassword => String.t() | nil,
          :expirePasswordDays => String.t() | nil,
          :expirePasswordDaysMetadata =>
            DocuSign.Model.AccountPasswordExpirePasswordDays.t() | nil,
          :lockoutDurationMinutes => String.t() | nil,
          :lockoutDurationMinutesMetadata =>
            DocuSign.Model.AccountPasswordLockoutDurationMinutes.t() | nil,
          :lockoutDurationType => String.t() | nil,
          :lockoutDurationTypeMetadata =>
            DocuSign.Model.AccountPasswordLockoutDurationType.t() | nil,
          :minimumPasswordAgeDays => String.t() | nil,
          :minimumPasswordAgeDaysMetadata =>
            DocuSign.Model.AccountPasswordMinimumPasswordAgeDays.t() | nil,
          :minimumPasswordLength => String.t() | nil,
          :minimumPasswordLengthMetadata => DocuSign.Model.AccountMinimumPasswordLength.t() | nil,
          :passwordIncludeDigit => String.t() | nil,
          :passwordIncludeDigitOrSpecialCharacter => String.t() | nil,
          :passwordIncludeLowerCase => String.t() | nil,
          :passwordIncludeSpecialCharacter => String.t() | nil,
          :passwordIncludeUpperCase => String.t() | nil,
          :passwordStrengthType => String.t() | nil,
          :passwordStrengthTypeMetadata => DocuSign.Model.AccountPasswordStrengthType.t() | nil,
          :questionsRequired => String.t() | nil,
          :questionsRequiredMetadata => DocuSign.Model.AccountPasswordQuestionsRequired.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.AccountPasswordRules do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :expirePasswordDaysMetadata,
      :struct,
      DocuSign.Model.AccountPasswordExpirePasswordDays,
      options
    )
    |> deserialize(
      :lockoutDurationMinutesMetadata,
      :struct,
      DocuSign.Model.AccountPasswordLockoutDurationMinutes,
      options
    )
    |> deserialize(
      :lockoutDurationTypeMetadata,
      :struct,
      DocuSign.Model.AccountPasswordLockoutDurationType,
      options
    )
    |> deserialize(
      :minimumPasswordAgeDaysMetadata,
      :struct,
      DocuSign.Model.AccountPasswordMinimumPasswordAgeDays,
      options
    )
    |> deserialize(
      :minimumPasswordLengthMetadata,
      :struct,
      DocuSign.Model.AccountMinimumPasswordLength,
      options
    )
    |> deserialize(
      :passwordStrengthTypeMetadata,
      :struct,
      DocuSign.Model.AccountPasswordStrengthType,
      options
    )
    |> deserialize(
      :questionsRequiredMetadata,
      :struct,
      DocuSign.Model.AccountPasswordQuestionsRequired,
      options
    )
  end
end
