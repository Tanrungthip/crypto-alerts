Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.

<div class="container card-login">
  <h2>Log in</h2>
  <%= simple_form_for(resource, as: resource_name, url: session_path(resource_name)) do |f| %>
    <div class="form-inputs">
      <%= f.input :email,
                required: false,
                autofocus: true,
                input_html: { autocomplete: "email" } %>
      <%= f.input :password,
                required: false,
                input_html: { autocomplete: "current-password" } %>
      <%= f.input :remember_me, as: :boolean if devise_mapping.rememberable? %>
    </div>
    <div class="form-actions">
      <%= f.button :submit, "Log in" %>
    </div>
    <%= render "devise/shared/links" %>
  <% end %>
</div>
