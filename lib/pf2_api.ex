defmodule Pf2Api do
  @moduledoc """
  Documentation for `Pf2Api`.

  ## Examples

  Pf2Api.diety(api_key)
  Pf2Api.ancestry(api_key, %{"data.hp" => 6})
  """

  @api_endpoint "https://api.pathfinder2.fr/v1/pf2/"

  def endpoints(token, params \\ %{}) do
    send_request(token, "", params)
  end

  def action(token, params \\ %{}) do
    send_request(token, "action", params)
  end

  def ancestry(token, params \\ %{}) do
    send_request(token, "ancestry", params)
  end

  def archetype(token, params \\ %{}) do
    send_request(token, "archetype", params)
  end

  def background(token, params \\ %{}) do
    send_request(token, "background", params)
  end

  def class(token, params \\ %{}) do
    send_request(token, "class", params)
  end

  def class_feature(token, params \\ %{}) do
    send_request(token, "classFeature", params)
  end

  def diety(token, params \\ %{}) do
    send_request(token, "diety", params)
  end

  def equipment(token, params \\ %{}) do
    send_request(token, "equipment", params)
  end

  def feat(token, params \\ %{}) do
    send_request(token, "feat", params)
  end

  def spell(token, params \\ %{}) do
    send_request(token, "spell", params)
  end

  defp send_request(token, endpoint, params) do
    headers = [Authorization: "#{token}", Accept: "Application/json; Charset=utf-8"]
    response = HTTPoison.get!([@api_endpoint, endpoint], headers, params: params)
    Jason.decode!(response.body)
  end
end
