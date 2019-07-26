defmodule TodoApp.Tarefa do
    use Ecto.Schema
    import Ecto.Changeset
    alias TodoApp.Usuario

    schema("tarefas") do
        field :titulo, :string
        field :pronta, :boolean
        belongs_to :usuario, Usuario
    end

    def changeset(struct, params \\ %{}) do
        struct
        |> cast(params, [:titulo, :pronta])
        |> validate_required([:titulo, :pronta])
    end
end