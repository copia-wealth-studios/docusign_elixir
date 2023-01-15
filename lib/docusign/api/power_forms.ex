# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Api.PowerForms do
  @moduledoc """
  API calls for all endpoints tagged `PowerForms`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder

  @doc """
  Deletes a PowerForm.
  This method deletes a PowerForm.

  ### Parameters

  - `connection` (DocuSign.Connection): Connection to server
  - `account_id` (String.t): The external account number (int) or account ID GUID.
  - `power_form_id` (String.t): The ID of the PowerForm.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec power_forms_delete_power_form(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil} | {:ok, DocuSign.Model.ErrorDetails.t()} | {:error, Tesla.Env.t()}
  def power_forms_delete_power_form(connection, account_id, power_form_id, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/v2.1/accounts/#{account_id}/powerforms/#{power_form_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {400, %DocuSign.Model.ErrorDetails{}}
    ])
  end

  @doc """
  Deletes one or more PowerForms.
  This method deletes one or more PowerForms. The request body takes an array of PowerForm objects that are deleted based on the `powerFormId`.

  ### Parameters

  - `connection` (DocuSign.Connection): Connection to server
  - `account_id` (String.t): The external account number (int) or account ID GUID.
  - `opts` (keyword): Optional parameters
    - `:body` (PowerFormsRequest): 

  ### Returns

  - `{:ok, DocuSign.Model.PowerFormsResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec power_forms_delete_power_forms_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.PowerFormsResponse.t()}
          | {:ok, DocuSign.Model.ErrorDetails.t()}
          | {:error, Tesla.Env.t()}
  def power_forms_delete_power_forms_list(connection, account_id, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:delete)
      |> url("/v2.1/accounts/#{account_id}/powerforms")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %DocuSign.Model.PowerFormsResponse{}},
      {400, %DocuSign.Model.ErrorDetails{}}
    ])
  end

  @doc """
  Returns a single PowerForm.
  This method returns detailed information about a specific PowerForm.

  ### Parameters

  - `connection` (DocuSign.Connection): Connection to server
  - `account_id` (String.t): The external account number (int) or account ID GUID.
  - `power_form_id` (String.t): The ID of the PowerForm.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, DocuSign.Model.PowerForm.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec power_forms_get_power_form(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.PowerForm.t()}
          | {:ok, DocuSign.Model.ErrorDetails.t()}
          | {:error, Tesla.Env.t()}
  def power_forms_get_power_form(connection, account_id, power_form_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v2.1/accounts/#{account_id}/powerforms/#{power_form_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %DocuSign.Model.PowerForm{}},
      {400, %DocuSign.Model.ErrorDetails{}}
    ])
  end

  @doc """
  Returns a list of PowerForms.
  This method returns a list of PowerForms that are available to the user.

  ### Parameters

  - `connection` (DocuSign.Connection): Connection to server
  - `account_id` (String.t): The external account number (int) or account ID GUID.
  - `opts` (keyword): Optional parameters
    - `:from_date` (String.t): The start date for a date range.  **Note:** If no value is provided, no date filtering is applied.
    - `:order` (String.t): The order in which to sort the results.  Valid values are:    * `asc`: Ascending order. * `desc`: Descending order. 
    - `:order_by` (String.t): The file attribute to use to sort the results.  Valid values are:  - `sender` - `auth` - `used` - `remaining` - `lastused` - `status` - `type` - `templatename` - `created`
    - `:search_fields` (String.t): A comma-separated list of additional properties to include in a search.  - `sender`: Include sender name and email in the search. - `recipients`: Include recipient names and emails in the search. - `envelope`: Include envelope information in the search. 
    - `:search_text` (String.t): Use this parameter to search for specific text.
    - `:to_date` (String.t): The end date for a date range.  **Note:** If no value is provided, this property defaults to the current date.

  ### Returns

  - `{:ok, DocuSign.Model.PowerFormsResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec power_forms_get_power_forms_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.PowerFormsResponse.t()}
          | {:ok, DocuSign.Model.ErrorDetails.t()}
          | {:error, Tesla.Env.t()}
  def power_forms_get_power_forms_list(connection, account_id, opts \\ []) do
    optional_params = %{
      :from_date => :query,
      :order => :query,
      :order_by => :query,
      :search_fields => :query,
      :search_text => :query,
      :to_date => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/v2.1/accounts/#{account_id}/powerforms")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %DocuSign.Model.PowerFormsResponse{}},
      {400, %DocuSign.Model.ErrorDetails{}}
    ])
  end

  @doc """
  Gets PowerForm senders.
  This method returns a list of users who have sent PowerForms.

  ### Parameters

  - `connection` (DocuSign.Connection): Connection to server
  - `account_id` (String.t): The external account number (int) or account ID GUID.
  - `opts` (keyword): Optional parameters
    - `:start_position` (String.t): The position within the total result set from which to start returning values. The value **thumbnail** may be used to return the page image.

  ### Returns

  - `{:ok, DocuSign.Model.PowerFormSendersResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec power_forms_get_power_forms_senders(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.PowerFormSendersResponse.t()}
          | {:ok, DocuSign.Model.ErrorDetails.t()}
          | {:error, Tesla.Env.t()}
  def power_forms_get_power_forms_senders(connection, account_id, opts \\ []) do
    optional_params = %{
      :start_position => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/v2.1/accounts/#{account_id}/powerforms/senders")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %DocuSign.Model.PowerFormSendersResponse{}},
      {400, %DocuSign.Model.ErrorDetails{}}
    ])
  end

  @doc """
  Creates a new PowerForm
  This method creates a new PowerForm.  You create a PowerForm from an existing DocuSign [template](/docs/esign-rest-api/reference/templates/templates/create/), based on the `templateId` in the request body.   PowerForms that you create from a template are referred to as *web PowerForms*.  **Note:** The DocuSign Admin console also supports creating a PowerForm by uploading a PDF file that has active form fields (referred to as a *PDF PowerForm*). However, PDF PowerForms are deprecated and are not supported in the API.  **Note:** A PowerForm can have only one sender. (Because PowerForms are not necessarily sent by email, this user is also referred to as the PowerForm *initiator*.) If you need to associate multiple senders with a PowerForm, create multiple copies of the PowerForm by using the same template (one copy for each sender). By default, the sender is the PowerForm Administrator who creates the PowerForm.   ### Signing modes  You can use one of the following signing modes for a PowerForm:  **`email`**  This mode verifies the recipient's identity by using email authentication before the recipient can sign a document. The recipient enters their email address on the landing page and then clicks **Begin Signing** to begin the signing process. The system then sends an email message with a validation code to the recipient. If the recipient does not provide a valid email address, they do not receive the email message containing the access code and are not able to open and sign the document.  Alternatively, you can make the process easier for signers by using email authentication only and omitting the access code. To do this, you append the `activateonly` flag to the PowerForm URL and set it to true by passing in the value `1`.  When the flag is active, the first recipient receives an email with a link that initiates the signing session without having to enter access code.  Example: `activateonly=1`  **`direct`**  This mode does not require any verification. After a recipient enters their email address on the landing page and clicks **Begin Signing,** a new browser tab opens and the recipient can immediately begin the signing process.  Because the `direct` signing mode does not verify the recipient's identity by using email authentication, we strongly recommend that you use this mode only when the PowerForm is accessible behind a secure portal where the recipient's identity is already authenticated, or where another form of authentication is specified for the recipient in the DocuSign template (for example, an access code, phone authentication, or ID check).  **Note:** In the account settings, `enablePowerFormDirect` must be **true** to use `direct` as the `signingMode`.  ### Redirect URLs  You can control the URL to which signers are redirected after signing your PowerForm. However, the URL is specified elsewhere, outside of the PowerForm creation process. For details, see [How do I specify a URL to redirect to when a PowerForm is completed?](https://support.docusign.com/en/articles/How-do-I-specify-a-URL-to-redirect-to-when-a-Powerform-is-completed).  ### More information  For more information about creating PowerForms, see [Create a PowerForm](https://support.docusign.com/en/guides/ndse-user-guide-create-a-powerform).  

  ### Parameters

  - `connection` (DocuSign.Connection): Connection to server
  - `account_id` (String.t): The external account number (int) or account ID GUID.
  - `opts` (keyword): Optional parameters
    - `:body` (PowerForm): Information about any PowerForms that are included in the envelope.

  ### Returns

  - `{:ok, DocuSign.Model.PowerForm.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec power_forms_post_power_form(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.PowerForm.t()}
          | {:ok, DocuSign.Model.ErrorDetails.t()}
          | {:error, Tesla.Env.t()}
  def power_forms_post_power_form(connection, account_id, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/v2.1/accounts/#{account_id}/powerforms")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, %DocuSign.Model.PowerForm{}},
      {400, %DocuSign.Model.ErrorDetails{}}
    ])
  end

  @doc """
  Updates an existing PowerForm.
  This method updates an existing PowerForm.

  ### Parameters

  - `connection` (DocuSign.Connection): Connection to server
  - `account_id` (String.t): The external account number (int) or account ID GUID.
  - `power_form_id` (String.t): The ID of the PowerForm.
  - `opts` (keyword): Optional parameters
    - `:body` (PowerForm): Information about any PowerForms that are included in the envelope.

  ### Returns

  - `{:ok, DocuSign.Model.PowerForm.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec power_forms_put_power_form(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.PowerForm.t()}
          | {:ok, DocuSign.Model.ErrorDetails.t()}
          | {:error, Tesla.Env.t()}
  def power_forms_put_power_form(connection, account_id, power_form_id, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:put)
      |> url("/v2.1/accounts/#{account_id}/powerforms/#{power_form_id}")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %DocuSign.Model.PowerForm{}},
      {400, %DocuSign.Model.ErrorDetails{}}
    ])
  end
end
