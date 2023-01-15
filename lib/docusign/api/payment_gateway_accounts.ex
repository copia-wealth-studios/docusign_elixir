# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Api.PaymentGatewayAccounts do
  @moduledoc """
  API calls for all endpoints tagged `PaymentGatewayAccounts`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder

  @doc """
  List payment gateway accounts
  This method returns a list of payment gateway accounts and basic information about them.

  ### Parameters

  - `connection` (DocuSign.Connection): Connection to server
  - `account_id` (String.t): The external account number (int) or account ID GUID.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, DocuSign.Model.PaymentGatewayAccountsInfo.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec payment_gateway_accounts_get_all_payment_gateway_accounts(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, DocuSign.Model.PaymentGatewayAccountsInfo.t()}
          | {:ok, DocuSign.Model.ErrorDetails.t()}
          | {:error, Tesla.Env.t()}
  def payment_gateway_accounts_get_all_payment_gateway_accounts(
        connection,
        account_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url("/v2.1/accounts/#{account_id}/payment_gateway_accounts")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %DocuSign.Model.PaymentGatewayAccountsInfo{}},
      {400, %DocuSign.Model.ErrorDetails{}}
    ])
  end
end
