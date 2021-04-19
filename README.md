# Pf2Api

Pathfinder 2 API wrapper using data provided by Ravel

## Installation

```elixir
def deps do
  [
    {:pf2_api, git: "https://github.com/Drahcirius/pf2_api.git"}
  ]
end
```

## Example Usage

```elixir
iex> Pf2Api.diety(api_key)
%{
	"count" => 201,
	"results" => [ ... ]
}

iex> Pf2Api.ancestry(api_key, %{"data.hp" => 6})
%{
	"count" => 9,
	"results" => [ ... ]
}
```

## List of Endpoints
- action
- ancestry
- archetype
- background
- class
- class_feature
- diety
- equipment
- feat
- spell

