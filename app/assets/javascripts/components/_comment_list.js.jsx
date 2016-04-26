var CommentList = React.createClass({
  render: function () {
    var commentNodes = this.props.comments.map(function ( comment ) {
      return <Comment username={ comment.username } text={ comment.text } key={ comment.id } />
    });

    return (
      <div className="comment-list">
        { commentNodes }
      </div>
    )
  }
});