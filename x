<h1>Subscription Plans</h1>

<div>
  <h2>Free Plan</h2>
  <p>$0 / month</p>
  <p>Perfect for testing and getting started</p>
  <form action="/subscribe/free" method="post">
    <%= csrf_meta_tags %>
    <input type="submit" value="Subscribe to Free Plan">
  </form>
</div>

<br>

<div>
  <h2>Pro Plan</h2>
  <p>$49 / month</p>
  <p>Includes all features and premium support</p>
  <form action="/subscribe/pro" method="post">
    <%= csrf_meta_tags %>
    <input type="submit" value="Subscribe to Pro Plan">
  </form>
</div>
