# material form setup
# check ams styleguide for halp

SimpleForm.setup do |config|
  config.button_class = 'mdl-button mdl-button--gray mdl-js-button mdl-js-ripple-effect'

  # Normal input textfields
  config.wrappers :mdl_field_floating,
      tag: 'div',
      class: 'mdl-textfield mdl-js-textfield mdl-textfield--floating-label textfield__input--full',
      error_class: 'is-invalid' do |b|
    b.use :html5
    b.use :placeholder
    b.use :input, class: 'mdl-textfield__input'
    b.use :label, class: 'mdl-textfield__label'
    b.use :error, wrap_with: { tag: :span, class: 'mdl-textfield__error' }
    b.use :hint,  wrap_with: { tag: :span, class: 'mdl-textfield__hint' }
  end

  # Boolean inputs
  config.wrappers :mdl_checkbox, tag: 'label', class: 'mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect',
    error_class: 'is-invalid' do |b|
    b.use :input, class: 'mdl-checkbox__input', type: 'checkbox'
    b.use :label_text, wrap_with: { tag: :span, class: 'mdl-checkbox__label' }
    b.use :error, wrap_with: { tag: :span, class: 'mdl-textfield__error' }
    b.use :hint,  wrap_with: { tag: :span, class: 'mdl-checkbox__hint' }
  end

  # Group checkboxes
  config.wrappers :mdl_checkboxes, item_wrapper_tag: :label, item_wrapper_class: 'mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect' do |b|
    b.use :input, class: 'mdl-checkbox__input', type: 'checkbox'
    b.use :label, class: 'mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect'
    b.use :error, wrap_with: { tag: :span, class: 'mdl-textfield__error' }
    b.use :hint,  wrap_with: { tag: :span, class: 'mdl-checkbox__hint' }
  end

  # File attachment inputs
  config.wrappers :mdl_file_input, tag: 'div', class: 'mdl-textfield mdl-js-textfield mdl-textfield--file',
    error_class: 'is-invalid' do |b|
    b.use :input, class: ''
  end

  # Radio buttons
  config.wrappers :mdl_radio_button, tag: 'label', class: 'mdl-radio mdl-js-radio mdl-js-ripple-effect',
    error_class: 'is-invalid' do |b|
    b.use :input, class: 'mdl-radio__button'
  end

  config.default_wrapper = :mdl_field_floating
end
