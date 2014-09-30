defmodule CoverErr do
  def culprit do
    try do
      :potential_error_code
    end
    # If you comment out the following line, it will work
    :ok
  end
end
