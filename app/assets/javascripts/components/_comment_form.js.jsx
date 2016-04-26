var CommentForm = React.createClass({
  handleSubmit: function ( event ) {
    event.preventDefault();

    var author = this.refs.username.getDOMNode().value.trim();
    var text = this.refs.text.getDOMNode().value.trim();

    // validate
    if (!text || !author) {
      return false;
    }

    // submit
    var formData = $( this.refs.form.getDOMNode() ).serialize();
    this.props.onCommentSubmit( formData, this.props.form.action );

    // reset form
    this.refs.username.getDOMNode().value = "";
    this.refs.text.getDOMNode().value = "";
  },
  render: function () {
    return (
      <form ref="form" className="comment-form" action={ this.props.form.action } acceptCharset="UTF-8" method="post" onSubmit={ this.handleSubmit }>
        <p><input type="hidden" name={ this.props.form.csrf_param } value={ this.props.form.csrf_token } /></p>
        <p><input ref="username" name="comment[username]" placeholder="Your name" /></p>
        <p><textarea ref="text" name="comment[text]" placeholder="Say something..." /></p>
        <p><input type="hidden" name="comment[item_id]" value={this.props.form.id} /></p>
        <p><button type="submit">Post comment</button></p>
      </form>
    )
  }
});
