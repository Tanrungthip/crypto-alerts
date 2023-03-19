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

<form action="#">
      <h1>Sign in</h1>
      <div class="social-container">
        <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
        <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
        <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
      </div>
      <span>or use your account</span>
      <input type="email" placeholder="Email" />
      <input type="password" placeholder="Password" />
      <a href="#">Forgot your password?</a>
      <button>Sign In</button>
    </form>


    <%= simple_form_for(resource, as: resource_name, url: registration_path(resource_name)) do |f| %>
  <%= f.error_notification %>

  <div class="form-inputs">
    <%= f.input :email,
                required: true,
                autofocus: true,
                input_html: { autocomplete: "email" }%>
    <%= f.input :password,
                required: true,
                hint: ("#{@minimum_password_length} characters minimum" if @minimum_password_length),
                input_html: { autocomplete: "new-password" } %>
    <%= f.input :password_confirmation,
                required: true,
                input_html: { autocomplete: "new-password" } %>
  </div>

  <div class="form-actions">
    <%= f.button :submit, "Sign up" %>
  </div>
<% end %>
