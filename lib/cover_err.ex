defmodule CoverErr do
  def culprit do
    try do
      :potential_error_code
    rescue
      Error ->
        :error
    end
    # If you comment out the following line, it will work
    :ok
  end
end
