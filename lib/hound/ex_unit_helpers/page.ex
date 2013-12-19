defmodule Hound.ExUnitHelpers.Page do

  @doc "Get source of current page"
  defmacro page_source do
    quote do
      page_source(var!(meta)[:hound_info].driver_options, var!(meta)[:hound_session_id])
    end
  end


  @doc "Get the title of the current page"
  defmacro page_title do
    quote do
      page_title(var!(meta)[:hound_info].driver_options, var!(meta)[:hound_session_id])
    end
  end


  @doc "Find element on current page"
  defmacro find_element(strategy, selector) do
    quote do
      find_element(
        var!(meta)[:hound_info].driver_options,
        var!(meta)[:hound_session_id],
        strategy,
        selector
      )
    end
  end


  @doc "Find elements on current page"
  defmacro find_all_elements(strategy, selector) do
    quote do
      find_all_elements(
        var!(meta)[:hound_info].driver_options,
        var!(meta)[:hound_session_id],
        strategy,
        selector
      )
    end
  end


  @doc "Find element within element"
  defmacro find_within_element(strategy, selector) do
    quote do
      find_within_element(
        var!(meta)[:hound_info].driver_options,
        var!(meta)[:hound_session_id],
        strategy,
        selector
      )
    end
  end


  @doc "Find elements within element"
  defmacro find_all_within_element(strategy, selector) do
    quote do
      find_all_within_element(
        var!(meta)[:hound_info].driver_options,
        var!(meta)[:hound_session_id],
        strategy,
        selector
      )
    end
  end


  @doc "Get element on page currently in focus"
  defmacro element_in_focus do
    quote do
      element_in_focus(var!(meta)[:hound_info].driver_options, var!(meta)[:hound_session_id])
    end
  end


  @doc "Click on element"
  defmacro click_on(element_id) do
    quote do
      click_on(var!(meta)[:hound_info].driver_options, var!(meta)[:hound_session_id], element_id)
    end
  end


  @doc "Submit form"
  defmacro submit(element_id) do
    quote do
      submit(var!(meta)[:hound_info].driver_options, var!(meta)[:hound_session_id], element_id)
    end
  end


  @doc "Send sequence of key strokes to active element. The modifier keys are not released after this command is run."
  defmacro send_keys(keys) do
    quote do
      send_keys(var!(meta)[:hound_info].driver_options, var!(meta)[:hound_session_id], keys)
    end
  end

end
